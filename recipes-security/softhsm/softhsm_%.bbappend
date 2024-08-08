FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
SRC_URI = "git://github.com/opendnssec/SoftHSMv2.git;protocol=https;branch=develop \
           file://0001-Prevent-accessing-of-global-c-objects-once-they-are-.patch"

SRCREV = "913e7bfd463194fadcdd28f578087cc9c15643ee"

S = "${WORKDIR}/git"
