let
  pkgs = import <nixpkgs> { };

in
pkgs.mkShell {
  inputsFrom = [ (import ./default.nix) ];

  ZEPHYR_TOOLCHAIN_VARIANT = "gnuarmemb";

  GNUARMEMB_TOOLCHAIN_PATH = "${pkgs.gcc-arm-embedded}";

  shellHook = ''
    if [ -f "zephyr/zephyr-env.sh" ]; then
      source "zephyr/zephyr-env.sh"
    fi
  '';
}
