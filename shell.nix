let
  pkgs = import <nixpkgs> { };

  zmkPython =
    pkgs.python3.withPackages (p: with p; [
      anytree
      # canopen
      intelhex
      packaging
      progress
      psutil
      pyelftools
      pykwalify
      pyyaml
      setuptools
      west
    ]);

in
pkgs.mkShell {
  packages = with pkgs; [
    autoconf
    automake
    bzip2
    ccache
    cmake
    dfu-util
    dtc
    gcc
    gcc-arm-embedded
    git
    gnumake
    libtool
    ninja
    wget
    xz
    zmkPython
  ];


  shellHook = ''
    export ZEPHYR_TOOLCHAIN_VARIANT="gnuarmemb"
    export GNUARMEMB_TOOLCHAIN_PATH="${pkgs.gcc-arm-embedded}"
    if [ -f "zephyr/zephyr-env.sh" ]; then
      source "zephyr/zephyr-env.sh"
    fi
  '';
}
