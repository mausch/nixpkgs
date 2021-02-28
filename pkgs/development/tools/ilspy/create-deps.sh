#!/usr/bin/env nix-shell
#! nix-shell -I nixpkgs=https://github.com/NixOS/nixpkgs/archive/d0328678e91b1bb89d6a184c63bc3f21f81dbfe2.tar.gz -i bash -p dotnet-sdk_3 coreutils ripgrep

# Based on the create-deps.sh script from the eventstore package

HOME=. \
  DOTNET_CLI_TELEMETRY_OPTOUT=1 \
  DOTNET_SKIP_FIRST_TIME_EXPERIENCE=1 \
  dotnet restore > /dev/null


packages=$(find .nuget/packages | cut -d'/' -f3,4 | uniq | rg '/')

urlbase="https://www.nuget.org/api/v2/package"

cat << EOL
{ fetchurl }: let

  fetchNuGet = { name, version, sha256 }: fetchurl {
    inherit sha256;
    url = "$urlbase/\${name}/\${version}";
  };

in [
EOL

for package in $packages; do
  name=$(echo $package | cut -d'/' -f1)
  version=$(echo $package | cut -d'/' -f2)
  sha256=$(nix-prefetch-url "$urlbase/$name/$version" 2>/dev/null)
  cat << EOL

  (fetchNuGet {
    name = "$name";
    version = "$version";
    sha256 = "$sha256";
  })
EOL
done	

cat << EOL

]
EOL
