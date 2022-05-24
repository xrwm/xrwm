const std = @import("std");
const ScanProtocolsStep = @import("vendor-zig-wayland/build.zig").ScanProtocolsStep;

pub const WaylandPackageStep = struct {
    const Self = @This();
    
    builder: *std.build.Builder,
    step: std.build.Step,
    scan_protocol_step: *ScanProtocolsStep,
    target: std.zig.CrossTarget,
    compiler: []const u8,

    pkgs: struct {
        wayland: std.build.Pkg,
        // xkbcommon: std.build.Pkg,
        // pixman: std.build.Pkg,
        // wlroots: std.build.Pkg,
    },
    
    pub fn createWithCompiler(builder: *std.build.Builder, target: std.zig.CrossTarget, compiler: []const u8) *Self {
        const allocator = builder.allocator;
        const self = allocator.create(Self) catch unreachable;

        const wayland = std.build.Pkg {
            .name = "wayland",
            .path = .{ .generated = &self.scan_protocol_step.result },
        };
        // const xkbcommon = Pkg{
        //     .name = "xkbcommon",
        //     .path = .{ .path = "vendor-zig-xkbcommon/src/xkbcommon.zig" },
        // };
        // const pixman = Pkg{
        //     .name = "pixman",
        //     .path = .{ .path = "vendor-zig-pixman/pixman.zig" },
        // };
        // const wlroots = Pkg{
        //     .name = "wlroots",
        //     .path = .{ .path = "vendor-zig-wlroots/src/wlroots.zig" },
        //     .dependencies = &[_]Pkg{ wayland, xkbcommon, pixman },
        // };

        self.* = .{
            .builder = builder,
            .step = std.build.Step.init(.custom, "Create required wayland package", allocator, make),
            .scan_protocol_step = ScanProtocolsStep.create(builder),
            .target = target,
            .compiler = compiler,
            .pkgs = .{
                .wayland = wayland,
                // .xkbcommon = xkbcommon,
                // .pixman = pixman,
                // .wlroots = wlroots,
            },
        };

        // self.step.dependOn(&self.scan_protocol_step.step);
        
        const libffi = LibFFIStep.create(self.builder, self.target, self.compiler);
        self.step.dependOn(&libffi.step);

        return self;
    }

    /// Generate bindings from the protocol xml at the given absolute or relative path
    pub fn addProtocolPath(self: *Self, path: []const u8) void {
        self.scan_protocol_step.addProtocolPath(path);
    }

    /// Generate bindings from protocol xml provided by the wayland-protocols
    /// package given the relative path (e.g. "stable/xdg-shell/xdg-shell.xml")
    pub fn addSystemProtocol(self: *Self, relative_path: []const u8) void {
        self.scan_protocol_step.addSystemProtocol(relative_path);
    }
    
    pub fn make(step: *std.build.Step) !void {
        // const self = @fieldParentPtr(Self, "step", step);
        // const allocator = self.builder.allocator;
        _ = step;
    }
};

const CreateDirStep = struct {
    builder: *std.build.Builder,
    step: std.build.Step,
    dir: []const u8,

    const Self = @This();

    pub fn create(builder: *std.build.Builder, dir: []const u8) *Self {
        const allocator = builder.allocator;
        const self = allocator.create(Self) catch unreachable;

        self.* = .{
            .builder = builder,
            .step = std.build.Step.init(.custom, "Create directory", allocator, make),
            .dir = dir,
        };
        
        return self;
    }

    pub fn make(step: *std.build.Step) !void {
        const self = @fieldParentPtr(Self, "step", step);

        try self.builder.makePath(self.dir);
    }
};

const LibFFIStep = struct {
    builder: *std.build.Builder,
    step: std.build.Step,
    target: std.zig.CrossTarget,
    compiler: []const u8,    
    
    const Self = @This();
    
    pub fn create(builder: *std.build.Builder, target: std.zig.CrossTarget, compiler: []const u8) *Self {
        const allocator = builder.allocator;
        const self = allocator.create(Self) catch unreachable;

        const src_dir = std.fs.path.join(allocator, &[_][]const u8 {
            builder.build_root,
            "wayland",
            "vendor-libffi"
        }) catch unreachable;

        const cache_dir = std.fs.path.join(allocator, &[_][]const u8 {
            builder.build_root,
            builder.cache_root,
            "libffi"
        }) catch unreachable;

        self.* = .{
            .builder = builder,
            .step = std.build.Step.init(.custom, "Configure and build libffi", allocator, make),
            .target = target,
            .compiler = compiler,
        };
        
        var autoconf = std.build.RunStep.create(self.builder, "autoconf");
        autoconf.cwd = src_dir;
        autoconf.addArg("./autogen.sh");

        const prefix_dir = std.fs.path.join(allocator, &[_][]const u8 { cache_dir, "prefix" }) catch unreachable;
        var create_prefix_dir = CreateDirStep.create(self.builder, prefix_dir);
        var configure = std.build.RunStep.create(self.builder, "configure");
        configure.step.dependOn(&create_prefix_dir.step);
        configure.step.dependOn(&autoconf.step);
        configure.cwd = src_dir;
        configure.addArgs(&[_][]const u8 {
            "./configure",
            std.fmt.allocPrint(allocator, "CC={s}", .{ self.compiler }) catch unreachable,
            std.fmt.allocPrint(allocator, "--host={s}", .{ self.target.linuxTriple(allocator) catch unreachable }) catch unreachable,
            std.fmt.allocPrint(allocator, "--prefix={s}", .{ prefix_dir }) catch unreachable,
        });

        var build = std.build.RunStep.create(self.builder, "build");
        build.step.dependOn(&configure.step);
        build.cwd = src_dir;
        build.addArgs(&[_][]const u8 { "make", "install" });
        
        self.step.dependOn(&build.step);

        return self;
    }

    pub fn make(step: *std.build.Step) !void {
        // const self = @fieldParentPtr(Self, "step", step);
        // const allocator = self.builder.allocator;
        _ = step;
    }
};