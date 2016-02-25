FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

PR := "${PR}.1"

COMPATIBLE_MACHINE_strimboard-bsp = "strimboard-bsp"



KERNEL_FEATURES_append_strimboard-bsp += " cfg/smp.scc"

SRC_URI += "file://strimboard-bsp-standard.scc \
            file://strimboard-bsp-user-config.cfg \
            file://strimboard-bsp-user-features.scc \
           "

# replace these SRCREVs with the real commit ids once you've had
# the appropriate changes committed to the upstream linux-yocto repo
SRCREV_machine_pn-linux-yocto_strimboard-bsp ?= "${AUTOREV}"
SRCREV_meta_pn-linux-yocto_strimboard-bsp ?= "${AUTOREV}"
#LINUX_VERSION = "4.1"
