#!/usr/bin/env sh
set -e
#!/usr/bin/env sh
DIR=~/Downloads
GHUSER=controlplaneio
APP=kubesec
MIRROR=https://github.com/${GHUSER}/${APP}/releases/download

dl() {
    local ver=$1
    local lchecksums=$2
    local os=$3
    local arch=$4
    local archive_type=${5:-tar.gz}
    local platform="${os}_${arch}"
    local file="${APP}_${platform}.${archive_type}"
    local url=$MIRROR/$ver/$file
    printf "      # %s\n" $url
    printf "      %s: sha256:%s\n" $platform $(grep $file $lchecksums | awk '{print $1}')
}

dl_ver() {
    local ver=$1
    local url="$MIRROR/$ver/${APP}_checksums.txt"
    local lchecksums="$DIR/${APP}_${ver}_checksums.txt"
    if [ ! -e $lchecksums ];
    then
        wget -q -O $lchecksums $url
    fi

    printf "  # %s\n" $url
    printf "  %s:\n" $ver

    dl $ver $lchecksums darwin amd64
    dl $ver $lchecksums linux 386
    dl $ver $lchecksums linux amd64
}

dl_ver ${1:-v2.3.1}
