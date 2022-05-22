const std = @import("std");
const ScanProtocolsStep = @import("vendor-zig-wayland/build.zig").ScanProtocolsStep;

pub const WaylandPackageStep = struct {
    const Self = @This();
    
    builder: *std.build.Builder,
    step: std.build.Step,
    pkg: std.build.Pkg,
    scan_protocol_step: ScanProtocolsStep,
    
    pub fn create(builder: *std.build.Builder) *Self {
        const allocator = builder.allocator;
        const self = allocator.create(Self) catch unreachable;
        self.* = .{
            .builder = builder,
            .step = std.build.Step.init(.custom, "Create required wayland package", allocator, make),
            .scan_protocol_step = ScanProtocolsStep.create(builder),
            .pkg = .{ .name = "wayland" },
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
        
        const wayland = Pkg{
            .name = "wayland",
            .path = .{ .generated = &scanner.result },
        };
    }
};