{
  description = "wlroots based vr wayland compositor";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    flake-compat = { url = "github:edolstra/flake-compat"; flake = false; };
  };

  outputs = { self, nixpkgs, flake-utils, ... }@inputs:
    flake-utils.lib.eachSystem
      (with flake-utils.lib.system; [
        x86_64-linux
      ])
      (system:
        let
          pkgs = import nixpkgs {
            inherit system;
          };

          nativeBuildInputs = with pkgs; [
            pkg-config
            wayland-scanner
            zig

            libxkbcommon
            pixman
            udev
            wayland
            wayland-protocols
            wayland-scanner
            wlroots
          ];

          buildInputs = with pkgs; [
            libxkbcommon
            pixman
            udev
            wayland
            wayland-protocols
            wayland-scanner
            wlroots
          ];

          packageName = "xrwm";

        in
        {

          packages."xrwm" = pkgs.stdenv.mkDerivation {
            pname = "xrwm";
            version = "0.0.1";
            # src = ./.;
            # src = builtins.fetchGit {
            #   url = ./.;
            #   submodules = true;
            # };
            src = self;

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
              clang
              clang-tools
              cppcheck

              rnix-lsp
              zls

              pkg-config
              zig
              wayland
              wayland-protocols
              wayland-scanner
              wlroots
              pixman

              kwin
            ];

            shellHook = ''
              [ $STARSHIP_SHELL ] && exec $STARSHIP_SHELL
            '';

            LD_LIBRARY_PATH =
              let
                libs = with pkgs; [ wayland wlroots ];
              in
              nixpkgs.lib.strings.makeLibraryPath libs;

            CURRENT_PROJECT = packageName;
          };

          defaultPackage = self.packages.${system}.${packageName};
          devShell = self.devShells.${system}.dev;

        });

}

