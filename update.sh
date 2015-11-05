#!/bin/bash
set -e

cd "$(dirname "$(readlink -f "$BASH_SOURCE")")"

versions=( "$@" )
if [ ${#versions[@]} -eq 0 ]; then
	versions=( */ )
fi
versions=( "${versions[@]%/}" )


for version in "${versions[@]}"; do	
  if [ "${version}" == "1.8" ]; then
    package="ruby${version}"
    rubygems="rubygems1.8"
    fullVersion="$(curl -fsSL "http://ppa.launchpad.net/brightbox/ruby-ng/ubuntu/dists/trusty/main/binary-amd64/Packages.gz" | gunzip | awk -v pkgname=$package -F ': ' '$1 == "Package" { pkg = $2 } pkg == pkgname && $1 == "Version" { print $2 }' | sort -rV | head -n1 )"
  elif [ "${version}" == "1.9" ]; then
  	package="ruby1.9.1"
  	rubygems=""
    fullVersion="$(curl -fsSL "http://ppa.launchpad.net/brightbox/ruby-ng/ubuntu/dists/trusty/main/binary-amd64/Packages.gz" | gunzip | awk -v pkgname=$package -F ': ' '$1 == "Package" { pkg = $2 } pkg == pkgname && $1 == "Version" { print $2 }' | sort -rV | head -n1 )"
  else
  	package="ruby${version}"
  	rubygems=""
    fullVersion="$(curl -fsSL "http://ppa.launchpad.net/brightbox/ruby-ng/ubuntu/dists/trusty/main/binary-amd64/Packages.gz" | gunzip | awk -v pkgname=$package -F ': ' '$1 == "Package" { pkg = $2 } pkg == pkgname && $1 == "Version" { print $2 }' | sort -rV | head -n1 )"
	fi
	(
		set -x
		sed '
			s/%%MAJOR%%/'"$version"'/g;
			s/%%VERSION%%/'"$fullVersion"'/g;
			s!%%PACKAGE%%!'"$package"'!g;
      s!%%RUBYGEMS%%!'"$rubygems"'!g;
		' Dockerfile.template > "$version/Dockerfile"
	)
done

