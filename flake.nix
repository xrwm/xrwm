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
            zig
            libxkbcommon
            pixman
            wayland
            wayland-protocols
            wayland-scanner
            wlroots
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

              kwin
              embedded-compositor-host
            ] ++ nativeBuildInputs ++ buildInputs;

            shellHook = ''
              [ $STARSHIP_SHELL ] && exec $STARSHIP_SHELL
            '';

            CURRENT_PROJECT = packageName;
          };

          defaultPackage = self.packages.${system}.${packageName};
          devShell = self.devShells.${system}.dev;

        });

}

