{ stdenv, lib
, makeWrapper, dpkg, fetchurl, autoPatchelfHook
, curl, libkrb5, lttng-ust, libpulseaudio, gtk3, openssl_1_1, icu70, webkitgtk, librsvg, gdk-pixbuf, libsoup, glib-networking, graphicsmagick_q16
}:

stdenv.mkDerivation rec {
  pname = "mssql-tools";
  version = "4.1.0.1523";

  src = fetchurl {
    # ref https://packages.microsoft.com/ubuntu/20.04/prod/dists/focal/main/binary-amd64/Packages
    url = "https://packages.microsoft.com/ubuntu/20.04/prod/dists/focal/pool/main/m/mssql-tools/mssql-tools_17.10.1.1-1_amd64.deb";
    sha256 = lib.fakeSha256;
  };

  nativeBuildInputs = [
    autoPatchelfHook
    makeWrapper
  ];

  # Crashes at startup when stripping:
  # "Failed to create CoreCLR, HRESULT: 0x80004005"
  dontStrip = true;

  buildInputs = [
    stdenv.cc.cc.lib
    libkrb5
    curl
    lttng-ust
    libpulseaudio
    gtk3
    openssl_1_1.out
    icu70
    webkitgtk
    librsvg
    gdk-pixbuf
    libsoup
    glib-networking
    graphicsmagick_q16
  ];

  unpackPhase = ''
    ${dpkg}/bin/dpkg -x $src $out
  '';

  preFixup = ''
    patchelf --replace-needed liblttng-ust.so.0 liblttng-ust.so $out/lib/libcoreclrtraceptprovider.so
    patchelf --replace-needed libGraphicsMagick++-Q16.so.12 libGraphicsMagick++.so.12 $out/usr/lib/x86_64-linux-gnu/pcoip-client/vchan_plugins/libvchan-plugin-clipboard.so
  '';

  installPhase = ''
    mkdir -p $out/bin $out/lib
    mv $out/opt/workspacesclient/* $out/lib
    rm -rf $out/opt
    wrapProgram $out/lib/workspacesclient \
      --prefix LD_LIBRARY_PATH : "${lib.makeLibraryPath buildInputs}" \
      --set GDK_PIXBUF_MODULE_FILE "${librsvg.out}/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache" \
      --set GIO_EXTRA_MODULES "${glib-networking.out}/lib/gio/modules"
    mv $out/lib/workspacesclient $out/bin
  '';

  meta = with lib; {
    description = "SQL Server command-line tools";
    homepage = "https://docs.microsoft.com/en-us/sql/linux/sql-server-linux-setup-tools";
    sourceProvenance = with sourceTypes; [ binaryNativeCode ];
    license = licenses.unfree;
    platforms = [ "x86_64-linux" ]; # TODO other platforms
    maintainers = [ maintainers.mausch ];
  };
}