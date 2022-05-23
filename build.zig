const std = @import("std");
const OculusSDK = @import("oculus/sdk.zig");
const WaylandPackageStep = @import("wayland/build.zig").WaylandPackageStep;

pub fn build(builder: *std.build.Builder) void {
    const mode = builder.standardReleaseOptions();

    {
        var step = builder.step("oculus", "Build an apk for the Oculus Quest 2");
        
        const oculus_target = OculusSDK.zig_targets.aarch64;
        const sdk = OculusSDK.init(builder, null, .{
            .android_sdk_version = 29,
            .build_tools_version = "29.0.3",
            .ndk_version = "21.4.7075529",
        });
        
        var wayland = WaylandPackageStep.createWithCompiler(builder, oculus_target, sdk.system_tools.clang.aarch64);
        step.dependOn(&wayland.step);
        _ = mode;
    }
}
