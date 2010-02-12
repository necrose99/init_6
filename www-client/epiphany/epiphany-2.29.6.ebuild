# Copyright 1999-2010 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"

inherit eutils gnome2

DESCRIPTION="GNOME webbrowser based on Webkit"
HOMEPAGE="http://www.gnome.org/projects/epiphany/"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="avahi doc networkmanager +nss test"
#IUSE="avahi doc introspection networkmanager +nss test"

# TODO: add seed support
#	introspection? ( >=dev-libs/gobject-introspection-0.6.7 )
RDEPEND=">=dev-libs/glib-2.19.7
	>=x11-libs/gtk+-2.18.0
	>=dev-libs/libxml2-2.6.12
	>=dev-libs/libxslt-1.1.7
	>=x11-libs/startup-notification-0.5
	>=x11-libs/libnotify-0.4
	>=dev-libs/dbus-glib-0.71
	>=gnome-base/gconf-2
	>=app-text/iso-codes-0.35
	>=net-libs/webkit-gtk-1.1.18
	>=net-libs/libsoup-2.29.4[gnome]
	>=gnome-base/gnome-keyring-2.26.0

	x11-libs/libICE
	x11-libs/libSM

	nss? ( dev-libs/nss )
	avahi? ( >=net-dns/avahi-0.6.22 )
	networkmanager? ( net-misc/networkmanager )
	x11-themes/gnome-icon-theme"
DEPEND="${RDEPEND}
	app-text/scrollkeeper
	>=dev-util/pkgconfig-0.9
	>=dev-util/intltool-0.40
	>=app-text/gnome-doc-utils-0.3.2
	gnome-base/gnome-common
	doc? ( >=dev-util/gtk-doc-1 )"

DOCS="AUTHORS ChangeLog* HACKING MAINTAINERS NEWS README TODO"

pkg_setup() {
	#	$(use_enable introspection)
	G2CONF="${G2CONF}
		--disable-scrollkeeper
		--with-distributor-name=Gentoo
		--enable-introspection=no
		$(use_enable avahi zeroconf)
		$(use_enable networkmanager network-manager)
		$(use_enable nss)
		$(use_enable test tests)"
}
