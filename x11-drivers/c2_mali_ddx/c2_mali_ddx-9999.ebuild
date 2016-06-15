EAPI=5

inherit git-r3 linux-info flag-o-matic multilib

EGIT_REPO_URI="git://github.com/mdrjr/c2_mali_ddx.git"

DESCRIPTION="Closed-source Mali X11 graphics drivers for Odroid C2 SBC"
HOMEPAGE="https://github.com/mdrjr/c2_mali_ddx"

SLOT="0"
KEYWORDS="~arm64"
IUSE=""

DEPEND="
	x11-drivers/mali-drivers
"
src_configure() {
	append-cflags -I/usr/src/linux-3.14.65-odroidc2/drivers/gpu/arm/
	econf
}
