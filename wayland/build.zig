const std = @import("std");
const ScanProtocolsStep = @import("vendor-zig-wayland/build.zig").ScanProtocolsStep;

pub const WaylandPackageStep = struct {
    const Self = @This();
    
    builder: *std.build.Builder,
    step: std.build.Step,
    scan_protocol_step: ScanProtocolsStep,

    pkgs: struct {
        wayland: std.build.Pkg,
        // xkbcommon: std.build.Pkg,
        // pixman: std.build.Pkg,
        // wlroots: std.build.Pkg,
    },
    
    pub fn create(builder: *std.build.Builder) *Self {
        const allocator = builder.allocator;
        const self = allocator.create(Self) catch unreachable;

        const wayland = Pkg{
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
            .pkgs = .{
                .wayland = wayland,
                // .xkbcommon = xkbcommon,
                // .pixman = pixman,
                // .wlroots = wlroots,
            },
        };
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
        const self = @fieldParentPtr(Self, "step", step);
        const allocator = self.builder.allocator;
        
    }
};

const LibFFI = struct {
    pub const ConfigureStep = struct {
        builder: *std.build.Builder,
        step: std.build.Step,
        
        pub fn create(builder: *std.build.Builder) *Self {
            const allocator = builder.allocator;
            const self = allocator.create(Self) catch unreachable;
            self.* = .{
                .builder = builder,
                .step = std.build.Step.init(.custom, "Configure libffi", allocator, make),
            };
            return self;
        }

        pub fn make(step: *std.build.Step) !void {
            const self = @fieldParentPtr(Self, "step", step);
            const allocator = self.builder.allocator;
            
            const cache_dir = std.fs.path.join(allocator, &[_][]const u8 {
                self.builder.build_root,
                self.builder.cache_root,
                "libffi"
            }) catch unreachable;
        }
    };
    
    pub const BuildStep = struct {
        
    };
};