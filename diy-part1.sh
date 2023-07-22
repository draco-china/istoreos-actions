#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default


# Enable AX210 driver and dependencies
echo '
CONFIG_PACKAGE_kmod-cfg80211=y
CONFIG_PACKAGE_kmod-iwlwifi=y

# Firmware
CONFIG_PACKAGE_iwlwifi-firmware-ax200=y
CONFIG_PACKAGE_iwlwifi-firmware-ax201=y
CONFIG_PACKAGE_iwlwifi-firmware-ax210=y
CONFIG_PACKAGE_iwlwifi-firmware-iwlwifi-9000-pu-b0-jf-b0=y

# Network drivers
CONFIG_PACKAGE_kmod-e1000e=y
CONFIG_PACKAGE_kmod-i40e=y
CONFIG_PACKAGE_kmod-ixgbe=y
CONFIG_PACKAGE_kmod-usb-net-ax88179-178a=y

# Network utilities
CONFIG_PACKAGE_hostapd-common=y
CONFIG_PACKAGE_hostapd-utils=y
CONFIG_PACKAGE_iwinfo=y
CONFIG_PACKAGE_wpad-basic=y
CONFIG_PACKAGE_wpad-basic-wolfssl=y

# Dual-band support
CONFIG_PACKAGE_kmod-mac80211=y

# Wireless testing
CONFIG_PACKAGE_mac80211-hwsim=y
CONFIG_PACKAGE_kmod-mac80211-hwsim=y

# 60GHz band
CONFIG_PACKAGE_mac80211_hwsim_devices_60ghz=y
CONFIG_PACKAGE_crda=y
CONFIG_PACKAGE_libnl-tiny=y
CONFIG_PACKAGE_libopenssl=y
CONFIG_PACKAGE_iw=y
CONFIG_PACKAGE_kmod-reg-hints=y
' >> .config