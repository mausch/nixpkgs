{
  stdenv
, lib
, fetchFromGitHub
, fetchurl
, makeWrapper
, autoPatchelfHook
, coreutils
, dotnet-sdk_3
, libX11
, kerberos
, curl
, lttng-ust
, gtk3
, openssl
, icu
, unzip
, makeDesktopItem
}:
let
  deps = import ./deps.nix { inherit fetchurl; };
  icon = fetchurl {
    url = https://github.com/icsharpcode/ILSpy/raw/3f4602be91444727150d108f58be8cf39e0e3ab6/ILSpy/Images/ILSpy.ico;
    sha256 = "0xy64dsq0svqhb35ypy3b2nfsw6y8m3l8rg27drlbmbjz9y55rlc";
  };
  desktopItem = makeDesktopItem {
    type = "Application";
    name = "ILSpy";
    desktopName = "ILSpy";
    exec = "ILSpy";
    comment = ".NET assembly browser and decompiler";
    categories = "Development";
    icon = "ILSpy";
  };
in
stdenv.mkDerivation rec {
  pname = "ilspy";
  version = "unstable-${releaseVersion}";
  releaseVersion = "5.0-rc2";

  nativeBuildInputs = [
    autoPatchelfHook
  ];

  # Crashes at startup when stripping:
  # "Failed to create CoreCLR, HRESULT: 0x80004005"
  dontStrip = true;

  sourceRoot = ".";

  buildInputs = [
    libX11
    stdenv.cc.cc.lib
    kerberos
    curl
    lttng-ust
    gtk3
    openssl.out
    icu
  ];

  src = fetchFromGitHub {
    owner = "icsharpcode";
    repo = "AvaloniaILSpy";
    rev = "v${releaseVersion}";
    sha256 = "0ypv3q38bq0z8b52wqln96k62ix7snh21j9wlka83xj4pn63bqmw";
    fetchSubmodules = true;
  };

  buildPhase = ''
    ${coreutils}/bin/mkdir home
    export HOME=$PWD/home
  
    export DOTNET_CLI_TELEMETRY_OPTOUT=1
    export DOTNET_SKIP_FIRST_TIME_EXPERIENCE=1
    unset version # https://github.com/dotnet/core/issues/4491#issuecomment-686595654

    ${dotnet-sdk_3}/bin/dotnet nuget disable source nuget.org
    for package in ${toString deps}; do
      ${dotnet-sdk_3}/bin/dotnet nuget add source $package
    done

    cd source
    ${coreutils}/bin/rm nuget.config

    ${dotnet-sdk_3}/bin/dotnet build -c Release ILSpy.sln
  '';

  installPhase = ''
    ${coreutils}/bin/chmod a+x ILSpy
    ${coreutils}/bin/mkdir -p \
      $out/bin \
      $out/share/applications \
      $out/share/pixmaps
    ${coreutils}/bin/ln -s ${icon} $out/share/pixmaps/ILSpy.ico
    ${coreutils}/bin/mv * $out/bin

    ${makeWrapper}/bin/wrapProgram $out/bin/ILSpy \
      --prefix LD_LIBRARY_PATH : "${lib.makeLibraryPath buildInputs}"

    ${coreutils}/bin/ln -s ${desktopItem}/share/applications/ILSpy.desktop $out/share/applications/ILSpy.desktop

  '';

  meta = with lib; {
    description = ".NET assembly browser and decompiler";
    homepage = "https://github.com/icsharpcode/AvaloniaILSpy";
    platforms = [ "x86_64-linux" ];
    license = licenses.mit;
    maintainers = with maintainers; [ mausch ];
  };
}
