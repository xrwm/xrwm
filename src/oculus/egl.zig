const std = @import("std");
const log = std.log.scoped(.egl);

pub const c = @import("c.zig");

const android = @import("android-support.zig");

pub const Version = enum {
    gles2,
    gles3,
};

pub const EGLContext = struct {
    const Self = @This();

    display: c.EGLDisplay,
    surface: c.EGLSurface,
    context: c.EGLContext,

    pub fn init(window: *android.ANativeWindow, version: Version) !Self {
        _ = window;
        _ = version;
        const EGLint = c.EGLint;

        var egl_display = c.eglGetDisplay(null);
        if (egl_display == null) {
            log.err("Error: No display found!\n", .{});
            return error.FailedToInitializeEGL;
        }

        var egl_major: EGLint = undefined;
        var egl_minor: EGLint = undefined;
        if (c.eglInitialize(egl_display, &egl_major, &egl_minor) == 0) {
            log.err("Error: eglInitialise failed!\n", .{});
            return error.FailedToInitializeEGL;
        }

        log.info(
            \\EGL Version:    {s}
            \\EGL Vendor:     {s}
            \\EGL Extensions: {s}
            \\
        , .{
            std.mem.span(c.eglQueryString(egl_display, c.EGL_VERSION)),
            std.mem.span(c.eglQueryString(egl_display, c.EGL_VENDOR)),
            std.mem.span(c.eglQueryString(egl_display, c.EGL_EXTENSIONS)),
        });

        // Do NOT use eglChooseConfig, because the Android EGL code pushes in multisample
        // flags in eglChooseConfig if the user has selected the "force 4x MSAA" option in
        // settings, and that is completely wasted for our warp target.
        var configs: [1024]c.EGLConfig = undefined;
        var num_configs: c.EGLint = undefined;
        if (c.eglGetConfigs(egl_display, &configs, configs.len, &num_configs) == c.EGL_FALSE) {
            log.err("Error: eglGetConfigs failed: 0x{X:0>4}\n", .{c.eglGetError()});
            return error.FailedToInitializeEGL;
        }

        const config_attribute_list = [_]EGLint{
            c.EGL_RED_SIZE,     8,
            c.EGL_GREEN_SIZE,   8,
            c.EGL_BLUE_SIZE,    8,
            c.EGL_ALPHA_SIZE,   8,
            c.EGL_DEPTH_SIZE,   0,
            c.EGL_STENCIL_SIZE, 0,
            c.EGL_SAMPLES,      0,
            c.EGL_NONE,
        };

        var chosen_config: c.EGLConfig = null;
        for (configs[0..@intCast(usize, num_configs)]) |config, i| {
            var value: c.EGLint = 0;
            _ = c.eglGetConfigAttrib(egl_display, config, c.EGL_RENDERABLE_TYPE, &value);
            if ((value & c.EGL_OPENGL_ES3_BIT) != c.EGL_OPENGL_ES3_BIT) {
                continue;
            }

            // The pbuffer config also needs to be compatible with normal window rendering
            // so it can share textures with the window context.
            _ = c.eglGetConfigAttrib(egl_display, config, c.EGL_SURFACE_TYPE, &value);
            if ((value & (c.EGL_WINDOW_BIT | c.EGL_PBUFFER_BIT)) != (c.EGL_WINDOW_BIT | c.EGL_PBUFFER_BIT)) {
                continue;
            }

            var j: usize = 0;
            while (config_attribute_list[j] != c.EGL_NONE) : (j += 2) {
                _ = c.eglGetConfigAttrib(egl_display, config, config_attribute_list[j], &value);
                if (value != config_attribute_list[j + 1]) {
                    break;
                }
            }
            if (config_attribute_list[j] == c.EGL_NONE) {
                chosen_config = configs[i];
                break;
            }
        }
        if (chosen_config == null) {
            log.err("Error: choosing config failed: 0x{X:0>4}\n", .{c.eglGetError()});
            return error.FailedToInitializeEGL;
        }

        log.info("Config: {}\n", .{chosen_config});

        const context_attribute_list = [_]EGLint{ c.EGL_CONTEXT_CLIENT_VERSION, 3, c.EGL_NONE };

        var context = c.eglCreateContext(egl_display, chosen_config, null, &context_attribute_list);
        if (context == null) {
            log.err("Error: eglCreateContext failed: 0x{X:0>4}\n", .{c.eglGetError()});
            return error.FailedToInitializeEGL;
        }
        errdefer _ = c.eglDestroyContext(egl_display, context);

        log.info("Context created: {}\n", .{context});

        const surface_attribute_list = [_]c.EGLint{ c.EGL_WIDTH, 16, c.EGL_HEIGHT, 16, c.EGL_NONE };
        const surface = c.eglCreatePbufferSurface(egl_display, chosen_config, &surface_attribute_list);
        if (surface == null) {
            log.err("Error: eglCreatePbufferSurface failed: 0x{X:0>4}\n", .{c.eglGetError()});
            return error.FailedToInitializeEGL;
        }
        errdefer _ = c.eglDestroySurface(egl_display, context);

        if (c.eglMakeCurrent(egl_display, surface, surface, context) == c.EGL_FALSE) {
            log.err("Error: eglMakeCurrent failed: 0x{X:0>4}\n", .{c.eglGetError()});
            return error.FailedToInitializeEGL;
        }

        return Self{
            .display = egl_display,
            .surface = surface,
            .context = context,
        };
    }

    pub fn deinit(self: *Self) void {
        _ = c.eglDestroySurface(self.display, self.surface);
        _ = c.eglDestroyContext(self.display, self.context);
        self.* = undefined;
    }

    pub fn swapBuffers(self: Self) !void {
        if (c.eglSwapBuffers(self.display, self.surface) == c.EGL_FALSE) {
            log.err("Error: eglMakeCurrent failed: 0x{X:0>4}\n", .{c.eglGetError()});
            return error.EglFailure;
        }
    }

    pub fn makeCurrent(self: Self) !void {
        if (c.eglMakeCurrent(self.display, self.surface, self.surface, self.context) == c.EGL_FALSE) {
            log.err("Error: eglMakeCurrent failed: 0x{X:0>4}\n", .{c.eglGetError()});
            return error.EglFailure;
        }
    }

    pub fn release(self: Self) void {
        if (c.eglMakeCurrent(self.display, self.surface, self.surface, null) == c.EGL_FALSE) {
            log.err("Error: eglMakeCurrent failed: 0x{X:0>4}\n", .{c.eglGetError()});
        }
    }
};
