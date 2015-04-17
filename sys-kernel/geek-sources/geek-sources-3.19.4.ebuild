# Copyright 2009-2014 Andrey Ovcharov <sudormrfhalt@gmail.com>
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"
DEBLOB_AVAILABLE="0"

KMV="$(echo $PV | cut -f 1-2 -d .)"
KSV="$(echo $PV | cut -f 1-3 -d .)"

AUFS_VER="${KMV}"
BFQ_VER="${KMV}.0-v7r7"
BLD_VER="${KMV}"
CK_VER="${KMV}-ck1"
FEDORA_VER="f22"
GRSEC_VER="3.1-${KMV}.3-201504021826" # 02/04/15 18:26
GRSEC_SRC="http://grsecurity.net/test/grsecurity-${GRSEC_VER}.patch"
LQX_VER="${KSV}-1"
MAGEIA_VER="releases/${KSV}/1.mga5"
PAX_VER="${KMV}.3-test15"
PAX_SRC="http://www.grsecurity.net/~paxguy1/pax-linux-${PAX_VER}.patch"
# REISER4_VER="3.14.1"
# RT_VER="${KSV}-rt17"
SUSE_VER="stable"
UKSM_VER="0.1.2.3"
UKSM_NAME="uksm-${UKSM_VER}-for-v3.18"

SUPPORTED_USES="aufs bfq bld bfs brand -build -deblob ck fedora gentoo grsec pax pf suse symlink uksm zen"

inherit geek-sources

HOMEPAGE="https://github.com/init6/init_6/wiki/${PN}"
KEYWORDS="~amd64 ~x86"

DESCRIPTION="Full sources for the Linux kernel including: fedora, grsecurity, mageia and other patches"