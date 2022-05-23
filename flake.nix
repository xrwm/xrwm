{
  description = "wlroots based vr wayland compositor";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    flake-compat = { url = "github:edolstra/flake-compat"; flake = false; };

    android-nixpkgs = {
      url = "github:tadfisher/android-nixpkgs/stable";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, flake-utils, android-nixpkgs, ... }@inputs:
    flake-utils.lib.eachSystem
      (with flake-utils.lib.system; [
        x86_64-linux
      ])
      (system:
        let
          pkgs = import nixpkgs {
            inherit system;
          };

          aarch64-pkgs = import nixpkgs {
            system = "aarch64-linux";
            # system = "x86_64-linux";
            crossSystem = {
              config = "aarch64-unknown-linux-android";
            };
          };

          my-pkgs = import nixpkgs {
            inherit system;
            overlays = [
              (self: super: {
                nativeBuildInputs = [ pkgs.zlib ];
                buildInputs = [ pkgs.zlib ];
              })
            ];
          };

          android-sdk = android-nixpkgs.sdk.${system} (sdkPkgs: with sdkPkgs; [
            cmdline-tools-latest
            build-tools-29-0-3
            platforms-android-29
            ndk-21-4-7075529
          ]);

          nativeBuildInputs = with pkgs; [
            zig
            pkg-config

            # libxkbcommon
            # pixman
            # wayland
            wayland-protocols
            wayland-scanner
            # wlroots

            # aarch64-pkgs.libxkbcommon
            # aarch64-pkgs.pixman
            # aarch64-pkgs.wlroots
            # pkgsCross.riscv64.wayland
            # pkgsCross.aarch64-android.libffi
            # wayland-protocols
            # wayland-scanner

            android-sdk
            jdk11
          
            meson
            ninja
            expat
            libxml2
            gnumake
            autoconf
            automake
            libtool
          ];

          buildInputs = with pkgs; [
          ];

          embedded-compositor-host = pkgs.writeShellApplication {
            name = "embedded-compositor-host";
            runtimeInputs = with pkgs; [ kwin ];
            text = ''
              kwin_wayland --xwayland --socket wayland-1 --width 1280 --height 720 2> /dev/null
            '';
          };

          packageName = "xrwm";

        in
        {

          packages."xrwm" = pkgs.stdenv.mkDerivation {
            pname = "xrwm";
            version = "0.0.1";
            src = ./.;

            nativeBuildInputs = nativeBuildInputs;
            buildInputs = buildInputs;

            dontInstall = true;
            buildPhase = ''
              runHook preBuild

              # Set Zig global cache directory
              export XDG_CACHE_HOME="$TMPDIR/zig-cache/"
              zig build install --prefix $out

              runHook postBuild
            '';
          };

          devShells.dev = pkgs.mkShell {
            packages = with pkgs; [
              rnix-lsp
              zls

              embedded-compositor-host
            ] ++ nativeBuildInputs ++ buildInputs;

            shellHook = ''
              [ $STARSHIP_SHELL ] && exec $STARSHIP_SHELL
            '';

            # AARCH_LIBC = "${aarch64-pkgs.glibc}/lib";

            CURRENT_PROJECT = packageName;
          };

          defaultPackage = self.packages.${system}.${packageName};
          devShell = self.devShells.${system}.dev;

        });

}

