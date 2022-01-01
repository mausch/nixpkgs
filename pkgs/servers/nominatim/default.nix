{ 
  stdenv, fetchFromGitHub, 
  cmake, zlib, bzip2, expat, libosmium, boost, postgresql_11
}:

stdenv.mkDerivation rec {
  pname = "nominatim";
  version = "4.0.1";

  src = fetchFromGitHub {
    owner = "osm-search";
    repo = "Nominatim";
    rev = "v${version}";
    sha256 = "1jhl3m18wmcqmhv8vbx73jv7b4grf1fcnyv205jbwydg28l3z8mh";
    fetchSubmodules = true;
  };

  nativeBuildInputs = [
    cmake
  ];

  buildInputs = [
    zlib
    bzip2.dev
    expat
    libosmium
    boost
    postgresql_11
  ];

}