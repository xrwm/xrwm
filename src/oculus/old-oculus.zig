const std = @import("std");

const android = @import("android");

const EGLContext = android.egl.EGLContext;
const JNI = android.JNI;
const c = android.egl.c;

const vrapi = @import("vrapi-zig/vrapi.zig");

const app_log = std.log.scoped(.app);

pub const AndroidApp = struct {
    const Self = @This();

    allocator: std.mem.Allocator,
    activity: android.ANativeActivity,

    thread: ?std.Thread = null,
    running: bool = true,

    egl_lock: std.Thread.Mutex = .{},
    egl: ?EGLContext = null,
    egl_init: bool = true,

    ovrJava: vrapi.ovrJava = undefined,

    pub fn init(allocator: std.mem.Allocator, activity: *android.ANativeActivity, stored_state: ?[]const u8) !Self {
        _ = stored_state;

        return Self{
            .allocator = allocator,
            .activity = activity,
        };
    }

    pub fn start(self: *Self) !void {
        self.ovrJava.Vm = @ptrCast(*[*c]const vrapi.struct_JNIInvokeInterface, self.activity.vm);
        self.ovrJava.Env = @ptrCast(*[*c]const vrapi.struct_JNINativeInterface, self.activity.env);
        self.ovrJava.ActivityObject = self.activity.clazz;

        const ovrInitParams: vrapi.ovrInitParms = .{
            .Type = vrapi.VRAPI_STRUCTURE_TYPE_INIT_PARMS,
            .ProductVersion = vrapi.VRAPI_PRODUCT_VERSION,
            .MajorVersion = vrapi.VRAPI_MAJOR_VERSION,
            .MinorVersion = vrapi.VRAPI_MINOR_VERSION,
            .PatchVersion = vrapi.VRAPI_PATCH_VERSION,
            .GraphicsAPI = vrapi.VRAPI_GRAPHICS_API_OPENGL_ES_3,
            .Java = self.ovrJava,
        };
        if (vrapi.vrapi_Initialize(&ovrInitParams) != vrapi.VRAPI_INITIALIZE_SUCCESS) {
            std.log.err("Failed to initialize vrapi", .{});
            return error.FailedToInitializeVrAPI;
        }
        std.log.info("Successfully initialized vrapi", .{});

        const suggestedEyeTextureWidth: c_int = vrapi.vrapi_GetSystemPropertyInt(&self.ovrJava, vrapi.VRAPI_SYS_PROP_SUGGESTED_EYE_TEXTURE_WIDTH);
        const suggestedEyeTextureHeight: c_int = vrapi.vrapi_GetSystemPropertyInt(&self.ovrJava, vrapi.VRAPI_SYS_PROP_SUGGESTED_EYE_TEXTURE_HEIGHT);
        std.log.info("Suggested Eye Texture {}x{}", .{ suggestedEyeTextureWidth, suggestedEyeTextureHeight });

        self.thread = try std.Thread.spawn(.{}, main, .{self});
    }

    pub fn deinit(self: *Self) void {
        @atomicStore(bool, &self.running, false, .SeqCst);

        if (self.thread) |thread| {
            thread.join();
            self.thread = null;
        }

        if (self.config) |config| {
            android.AConfiguration_delete(config);
        }

        self.* = undefined;
    }

    pub fn onNativeWindowCreated(self: *Self, window: *android.ANativeWindow) void {
        self.egl_lock.lock();
        defer self.egl_lock.unlock();

        if (self.egl) |*old| {
            old.deinit();
        }

        self.egl = EGLContext.init(window, .gles2) catch |err| blk: {
            app_log.err("Failed to initialize EGL for window: {}\n", .{err});
            break :blk null;
        };
        self.egl_init = true;
    }

    pub fn onNativeWindowDestroyed(self: *Self, window: *android.ANativeWindow) void {
        _ = window;
        self.egl_lock.lock();
        defer self.egl_lock.unlock();

        if (self.egl) |*old| {
            old.deinit();
        }
        self.egl = null;
    }

    fn CheckGL() !void {
        if (c.glGetError() != 0) {
            app_log.err("OpenGL error: {}\n", .{c.glGetError()});
            return error.OpenGLError;
        }
    }

    fn main(self: *Self) !void {
        var loop: usize = 0;
        app_log.info("main() started\n", .{});

        self.config = blk: {
            var cfg = android.AConfiguration_new() orelse return error.OutOfMemory;
            android.AConfiguration_fromAssetManager(cfg, self.activity.assetManager);
            break :blk cfg;
        };

        if (self.config) |cfg| {
            printConfig(cfg);
        }

        c.glDisable(c.GL_FRAMEBUFFER_SRGB_EXT);
        try CheckGL();

        while (@atomicLoad(bool, &self.running, .SeqCst)) {
            loop += 1;
        }
    }

    fn printConfig(config: *android.AConfiguration) void {
        var lang: [2]u8 = undefined;
        var country: [2]u8 = undefined;

        android.AConfiguration_getLanguage(config, &lang);
        android.AConfiguration_getCountry(config, &country);

        app_log.debug(
            \\MCC:         {}
            \\MNC:         {}
            \\Language:    {s}
            \\Country:     {s}
            \\Orientation: {}
            \\Touchscreen: {}
            \\Density:     {}
            \\Keyboard:    {}
            \\Navigation:  {}
            \\KeysHidden:  {}
            \\NavHidden:   {}
            \\SdkVersion:  {}
            \\ScreenSize:  {}
            \\ScreenLong:  {}
            \\UiModeType:  {}
            \\UiModeNight: {}
            \\
        , .{
            android.AConfiguration_getMcc(config),
            android.AConfiguration_getMnc(config),
            &lang,
            &country,
            android.AConfiguration_getOrientation(config),
            android.AConfiguration_getTouchscreen(config),
            android.AConfiguration_getDensity(config),
            android.AConfiguration_getKeyboard(config),
            android.AConfiguration_getNavigation(config),
            android.AConfiguration_getKeysHidden(config),
            android.AConfiguration_getNavHidden(config),
            android.AConfiguration_getSdkVersion(config),
            android.AConfiguration_getScreenSize(config),
            android.AConfiguration_getScreenLong(config),
            android.AConfiguration_getUiModeType(config),
            android.AConfiguration_getUiModeNight(config),
        });
    }
};
