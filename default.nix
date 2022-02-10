let
  pkgs = import <nixpkgs> { };

  gitignoreSource =
    let
      src =
        pkgs.fetchFromGitHub {
          owner = "hercules-ci";
          repo = "gitignore.nix";
          rev = "5b9e0ff9d3b551234b4f3eb3983744fa354b17f1";
          hash = "sha256-o/BdVjNwcB6jOmzZjOH703BesSkkS5O7ej3xhyO8hAY=";
        };
    in
    (import src { inherit (pkgs) lib; }).gitignoreSource;

  sources = {
    "modules/hal/cmsis" =
      pkgs.fetchFromGitHub {
        owner = "zephyrproject-rtos";
        repo = "cmsis";
        rev = "c3bd2094f92d574377f7af2aec147ae181aa5f8e";
        hash = "sha256-SZbopDEcf/Ye6OkrCvC4gn+G0u2MPn1d0RdxzBy9Hj8=";
      };

    "modules/hal/atmel" =
      pkgs.fetchFromGitHub {
        owner = "zephyrproject-rtos";
        repo = "hal_atmel";
        rev = "9f0a699a2f0253dc9688211ef696daa7b8fadb75";
        hash = "sha256-A9ry772WJuH95Le1GV447/2oA+3E5Pu4VnVLlgDFUuE=";
      };

    "modules/lib/canopennode" =
      pkgs.fetchFromGitHub {
        owner = "zephyrproject-rtos";
        repo = "canopennode";
        rev = "468d350028a975b96563e58344de48281a0ab371";
        hash = "sha256-vXPtAQqVj0nQdhaFiPVg7AIIFypa8p9GAOW9m6anr5U=";
      };

    "modules/lib/civetweb" =
      pkgs.fetchFromGitHub {
        owner = "zephyrproject-rtos";
        repo = "civetweb";
        rev = "e6903b80c09d17cd1a8bb32e40080005558aad29";
        hash = "sha256-M7T3m8xeFME3pAYJa87cF/xqRBZP5wLg8CLtWI8zU4g=";
      };

    "modules/hal/espressif" =
      pkgs.fetchFromGitHub {
        owner = "zephyrproject-rtos";
        repo = "hal_espressif";
        rev = "895d99ed0902e8f3ddde7bdeb3a1fe2fa875b005";
        hash = "sha256-wRVA3ROrzMhBeUFmjuCUl7jeDzA0FnUnCqTcBTGoCYs=";
      };

    "modules/fs/fatfs" =
      pkgs.fetchFromGitHub {
        owner = "zephyrproject-rtos";
        repo = "fatfs";
        rev = "1d1fcc725aa1cb3c32f366e0c53d7490d0fe1109";
        hash = "sha256-+Odgcwm7d7ZWUIr3WPXYD/NadZCJnmwKOmifFs9iXEQ=";
      };

    "modules/hal/nordic" =
      pkgs.fetchFromGitHub {
        owner = "zephyrproject-rtos";
        repo = "hal_nordic";
        rev = "f0d54d8449acbee49b3cebcef0e3e56640c50277";
        hash = "sha256-i0kIgDO7D5E9/3+CpZ5T8INjSv5+JD4+eKg5E6OZaRY=";
      };

    "modules/hal/nuvoton" =
      pkgs.fetchFromGitHub {
        owner = "zephyrproject-rtos";
        repo = "hal_nuvoton";
        rev = "b4d31f33238713a568e23618845702fadd67386f";
        hash = "sha256-vp4G1qKfVVxEUJgD0lBy9fO3SNcJ8rnRQcS4fW1UgiQ=";
      };

    "modules/hal/stm32" =
      pkgs.fetchFromGitHub {
        owner = "zephyrproject-rtos";
        repo = "hal_stm32";
        rev = "cc8731dba4fd9c57d7fe8ea6149828b89c2bd635";
        hash = "sha256-T05icRoiWo4hGhAYvZl4gkd/zvcgSyVwCfx2u7nXrEQ=";
      };

    "modules/hal/libmetal" =
      pkgs.fetchFromGitHub {
        owner = "zephyrproject-rtos";
        repo = "libmetal";
        rev = "9d4ee2c3cfd5f49861939447990f3b7d7bf9bf94";
        hash = "sha256-nbIJ578LNRgeVhbz4MeIOCmny23zQIOm6nUxO3yZr8g=";
      };

    "modules/hal/quicklogic" =
      pkgs.fetchFromGitHub {
        owner = "zephyrproject-rtos";
        repo = "hal_quicklogic";
        rev = "b3a66fe6d04d87fd1533a5c8de51d0599fcd08d0";
        hash = "sha256-XpPROaiZN0KRxQCtEOYaXSEBtxAo+atnH1ytOMXpYUI=";
      };

    "modules/lib/gui/lvgl" =
      pkgs.fetchFromGitHub {
        owner = "zephyrproject-rtos";
        repo = "lvgl";
        rev = "31acbaa36e9e74ab88ac81e3d21e7f1d00a71136";
        hash = "sha256-kNkaEYP7Dfkoe65lgO47kaObklN2itEit1yLGhgkP0E=";
      };

    "modules/crypto/mbedtls" =
      pkgs.fetchFromGitHub {
        owner = "zephyrproject-rtos";
        repo = "mbedtls";
        rev = "24d84ecff195fb15c889d9046e44e4804d626c67";
        hash = "sha256-Q9sZxP/t5+WziZ/BtcZt59pS4CGr7o2PnPHUV2oCl5A=";
      };

    "modules/lib/open-amp" =
      pkgs.fetchFromGitHub {
        owner = "zephyrproject-rtos";
        repo = "open-amp";
        rev = "de1b85a13032a2de1d8b6695ae5f800b613e739d";
        hash = "sha256-ScbHD7IbqBacTP/YuCDPBvZrZLiTPXu0nVv2IN9HcSA=";
      };

    "modules/audio/sof" =
      pkgs.fetchFromGitHub {
        owner = "zephyrproject-rtos";
        repo = "sof";
        rev = "b5b772dd611879ee6309da38759def79fc7f33f1";
        hash = "sha256-iOabokoONU7JGi3vFeKFQ79A3kkK7SQAEquHRw2nL64=";
      };

    "modules/lib/tinycbor" =
      pkgs.fetchFromGitHub {
        owner = "zephyrproject-rtos";
        repo = "tinycbor";
        rev = "40daca97b478989884bffb5226e9ab73ca54b8c4";
        hash = "sha256-MbJbXqX+CJMQ0ctGDDGG4nOvX6IM6CB1srE452SOQAs=";
      };

    "modules/crypto/tinycrypt" =
      pkgs.fetchFromGitHub {
        owner = "zephyrproject-rtos";
        repo = "tinycrypt";
        rev = "3e9a49d2672ec01435ffbf0d788db6d95ef28de0";
        hash = "sha256-5gtZbZNx+D/EUkyYk7rPtcxBZaNs4IFGTP/7IXzCoqU=";
      };

    "modules/fs/littlefs" =
      pkgs.fetchFromGitHub {
        owner = "zephyrproject-rtos";
        repo = "littlefs";
        rev = "9e4498d1c73009acd84bb36036ee5e2869112a6c";
        hash = "sha256-lN4z5whLmaLWpQiY1OPq3p7rBCWJZUO9Kv2R6g+O48A=";
      };

    "modules/debug/mipi-sys-t" =
      pkgs.fetchFromGitHub {
        owner = "zephyrproject-rtos";
        repo = "mipi-sys-t";
        rev = "75e671550ac1acb502f315fe4952514dc73f7bfb";
        hash = "sha256-fi7jL2vDmZyEoyO69Q4YOQnwZsKHJ4AxRgENnicHy2w=";
      };

    "modules/bsim_hw_models/nrf_hw_models" =
      pkgs.fetchFromGitHub {
        owner = "zephyrproject-rtos";
        repo = "nrf_hw_models";
        rev = "a47e326ca772ddd14cc3b9d4ca30a9ab44ecca16";
        hash = "sha256-tDpst18bnjnTHNsB6KDYINYe0WJGry8lYBB2m2LZRQA=";
      };

    "modules/tee/tfm-mcuboot" =
      pkgs.fetchFromGitHub {
        owner = "zephyrproject-rtos";
        repo = "mcuboot";
        rev = "1.7.0-rc1";
        hash = "sha256-putCq9J6jcVlZmRVbx0A5oAafWBfhq5W3tgMuYnY9V8=";
      };

    "tools/uf2" =
      pkgs.fetchFromGitHub {
        owner = "microsoft";
        repo = "uf2";
        rev = "f0506988eaf24cc12646ed1a39799fa29b204eed";
        hash = "sha256-AFLOv/ZyZZqWwJtSz3OfoBWswNvC/eUU82jf4XFow0c=";
      };

    "zephyr" =
      pkgs.fetchFromGitHub {
        owner = "zmkfirmware";
        repo = "zephyr";
        rev = "f2108f1646b964adffb9c7ed74641c828fef2a44";
        hash = "sha256-jEy+4OdBieu1HnSFpd/aJoFBDI1cTwiyqaXuNesHg4w=";
      };
  };

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

  common = {
    nativeBuildInputs = with pkgs; [
      autoconf
      automake
      bzip2
      cacert
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
    ] ++ [ zmkPython ];

    ZEPHYR_TOOLCHAIN_VARIANT = "gnuarmemb";

    GNUARMEMB_TOOLCHAIN_PATH = "${pkgs.gcc-arm-embedded}";
  };

  zmk-setup =
    pkgs.stdenv.mkDerivation (common // {
      name = "zmk-setup";

      src = gitignoreSource ./.;

      dontUseCmakeConfigure = true;

      buildPhase = ''
        west init -l app/

        west update
      '';

      installPhase = ''
        cp -r . $out
      '';

      # WARNING: This is bad! This hash will change all the time. Dependencies
      # pulled by `west` are not pinned to any Git revision or hash.
      outputHash = "sha256-/Ba1DUAPl/v/x4QYxT0iUbBRWx3W9mGBF4P/aDnj6q8=";
      outputHashAlgo = "sha256";
      outputHashMode = "recursive";
    });

  zmk-build =
    pkgs.stdenv.mkDerivation (common // {
      name = "zmk-build";

      src = zmk-setup;

      buildPhase = ''
        source "zephyr/zephyr-env.sh"

        cd app/

        west build -b proton_c -- -DSHIELD=kyria_left
      '';

      installPhase = ''
        cp -r build/ $out
      '';
    });
in
zmk-build
