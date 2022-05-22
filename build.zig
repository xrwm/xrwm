const std = @import("std");
const Builder = std.build.Builder;
const Pkg = std.build.Pkg;
const Sdk = @import("oculus/sdk.zig");
const ScanProtocolsStep = @import("wayland/vendor-zig-wayland/build.zig").ScanProtocolsStep;

pub fn build(b: *Builder) void {
    const mode = b.standardReleaseOptions();

    const scanner = ScanProtocolsStep.create(b);
    scanner.addSystemProtocol("stable/xdg-shell/xdg-shell.xml");

    const wayland = Pkg{
        .name = "wayland",
        .path = .{ .generated = &scanner.result },
    };
    // const xkbcommon = Pkg{
    //     .name = "xkbcommon",
    //     .path = .{ .path = "src/zig-xkbcommon/src/xkbcommon.zig" },
    // };
    // const pixman = Pkg{
    //     .name = "pixman",
    //     .path = .{ .path = "src/zig-pixman/pixman.zig" },
    // };
    // const wlroots = Pkg{
    //     .name = "wlroots",
    //     .path = .{ .path = "src/zig-wlroots/src/wlroots.zig" },
    //     .dependencies = &[_]Pkg{ wayland, xkbcommon, pixman },
    // };

    // var oculus_step = b.step("oculus", "Build an apk for the Oculus Quest 2");
    // var desktop_server_step = b.step("desktop", "Build for the desktop");

    const sdk = Sdk.init(b, null, .{
        .android_sdk_version = 29,
        .build_tools_version = "29.0.3",
        .ndk_version = "21.4.7075529",
    });

    const keystore = Sdk.KeyStore{
        .file = ".build_config/android.keystore",
        .alias = "default",
        .password = "password", // globally readable password
    };

    const config = Sdk.AppConfig{
        .display_name = "xrwm", // displayed to user
        .app_name = "xrwm", // used in logcat, etc.
        .package_name = "xrwm.xrwm",
        .resources = &[_]Sdk.Resource{
            .{ .path = "mipmap/icon.png", .content = .{ .path = "icon.png" } },
        },
        .permissions = &[_][]const u8{},
    };

    const oculus_app = sdk.createApp("xrwm.apk", "oculus/oculus.zig", config, mode, .{
        .aarch64 = b.option(bool, "aarch64", "Enable the aarch64 build") orelse true,
        .arm = b.option(bool, "arm", "Enable the arm build") orelse false,
        .x86_64 = b.option(bool, "x86_64", "Enable the x86_64 build") orelse false,
        .x86 = b.option(bool, "x86", "Enable the x86 build") orelse false,
    }, keystore);

    for (oculus_app.libraries) |exe| {
        exe.addPackage(oculus_app.getAndroidPackage("android"));

        // exe.addLibPath("src/oculus/vr-api/Libs/Android/arm64-v8a/Debug");
        // exe.addIncludeDir("src/oculus/vr-api/Include");
        // exe.linkSystemLibrary("vrapi");

        exe.addLibPath("oculus/vendor-vr-api/Libs/Android/arm64-v8a/Debug");
        exe.linkSystemLibraryName("vrapi");

        exe.linkLibC();
        exe.addPackage(wayland);
        exe.addObjectFile("libwayland/install/lib/libwayland-server.a");
        exe.addObjectFile("libffi/prefix/lib/libffi.a");

        // exe.addLibPath("lib/arm64-v8a");
        // exe.linkSystemLibraryName("wayland-server");
        // exe.setLinkerScriptPath(.{ .path = "LINKER" });
        exe.step.dependOn(&scanner.step);
        // TODO: remove when https://github.com/ziglang/zig/issues/131 is implemented
        scanner.addCSource(exe);

        // exe.addPackage(xkbcommon);
        // exe.linkSystemLibrary("xkbcommon");

        // exe.addPackage(wlroots);
        // exe.linkSystemLibrary("wlroots");
        // exe.linkSystemLibrary("pixman-1");
    }

    b.getInstallStep().dependOn(oculus_app.final_step);

    const keystore_step = b.step("keystore", "Initialize a fresh debug keystore");
    const push_step = b.step("push", "Push the app to a connected android device");
    const run_step = b.step("run", "Run the app on a connected android device");

    keystore_step.dependOn(sdk.initKeystore(keystore, .{}));
    push_step.dependOn(oculus_app.install());
    run_step.dependOn(oculus_app.run());

    // {
    //     const exe = b.addExecutable("xrwm", "src/xrwm.zig");
    //     exe.setTarget(target);
    //     exe.setBuildMode(mode);

    //     exe.linkLibC();
    //     exe.addPackage(wayland);
    //     exe.linkSystemLibrary("wayland-server");
    //     exe.step.dependOn(&scanner.step);
    //     // TODO: remove when https://github.com/ziglang/zig/issues/131 is implemented
    //     scanner.addCSource(exe);

    //     exe.addPackage(xkbcommon);
    //     exe.linkSystemLibrary("xkbcommon");

    //     exe.addPackage(wlroots);
    //     exe.linkSystemLibrary("wlroots");
    //     exe.linkSystemLibrary("pixman-1");

    //     exe.step.dependOn(desktop_server_step);

    //     const run_cmd = exe.run();
    //     run_cmd.step.dependOn(b.getInstallStep());

    //     const run_step = b.step("run", "Run the compositor");
    //     run_step.dependOn(&run_cmd.step);
    // }
}
