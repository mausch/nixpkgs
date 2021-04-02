{ lib
, stdenv
, fetchurl
, runCommand
, makeWrapper
, buildFHSUserEnv
, libselinux
, libarchive
, libGL
, xorg
, zlib
# Conda installs its packages and environments under this directory
, installationPath ? "~/.conda"
# Conda manages most pkgs itself, but expects a few to be on the system.
, condaDeps ? [ stdenv.cc xorg.libSM xorg.libICE xorg.libX11 xorg.libXau xorg.libXi xorg.libXrender libselinux libGL zlib ]
# Any extra nixpkgs you'd like available in the FHS env for Conda to use
, extraPkgs ? [ ]
}:

# How to use this package?
#
# First-time setup: this nixpkg downloads the conda installer and provides a FHS
# env in which it can run. On first use, the user will need to install conda to
# the installPath using the installer:
# $ nix-env -iA conda
# $ conda-shell
# $ conda-install
#
# Under normal usage, simply call `conda-shell` to activate the FHS env,
# and then use conda commands as normal:
# $ conda-shell
# $ conda install spyder
let
  version = "4.9.2";
  src = fetchurl {
      url = "https://repo.anaconda.com/miniconda/Miniconda3-py39_${version}-Linux-x86_64.sh";
      sha256 = "0z5fvqiy4q9gwr85b2qpmqmh8pharr8vxx80i6lavcacn78ifs2k";
  };

  conda = runCommand "conda-install" { buildInputs = [ makeWrapper ]; }
    ''
      mkdir -p $out/bin
      cp ${src} $out/bin/miniconda-installer.sh
      chmod +x $out/bin/miniconda-installer.sh

      makeWrapper                            \
        $out/bin/miniconda-installer.sh      \
        $out/bin/conda-install               \
        --add-flags "-p ${installationPath}" \
        --add-flags "-b"
    '';
in
  buildFHSUserEnv {
    name = "conda-shell";
    targetPkgs = pkgs: (builtins.concatLists [ [ conda ] condaDeps extraPkgs]);
    profile = ''
      # Add conda to PATH
      export PATH=${installationPath}/bin:$PATH
      # Paths for gcc if compiling some C sources with pip
      export NIX_CFLAGS_COMPILE="-I${installationPath}/include"
      export NIX_CFLAGS_LINK="-L${installationPath}lib"
      # Some other required environment variables
      export FONTCONFIG_FILE=/etc/fonts/fonts.conf
      export QTCOMPOSE=${xorg.libX11}/share/X11/locale
      export LIBARCHIVE=${libarchive.lib}/lib/libarchive.so
      # Allows `conda activate` to work properly
      source ${installationPath}/etc/profile.d/conda.sh
    '';

    meta = {
      description = "Conda is a package manager for Python";
      homepage = "https://conda.io/";
      platforms = lib.platforms.linux;
      license = lib.licenses.bsd3;
      maintainers = with lib.maintainers; [ jluttine bhipple ];
    };
  }
