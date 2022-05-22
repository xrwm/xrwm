const std = @import("std");

pub const WaylandPackageStep = struct {
    const Self = @This();
    
    builder: *std.build.Builder,
    step = std.build.Step,
    pkg = std.build.Pkg,
    
    pub fn create(builder: *std.build.Builder) *Self {
        const allocator = builder.allocator;
        const self = allocator.create(Self) catch unreachable;
        self.* = .{
            .builder = builder,
            .step = std.build.Step.init(.custom, "Create required wayland package", allocator, make),
            .pkg = .{ .name = "wayland" },
        };
        return self;
    }
    
    pub fn make(step: *std.build.Step) !void {
        const self = @fieldParentPtr(Self, "step", step);
        const allocator = self.builder.allocator;
    }
};