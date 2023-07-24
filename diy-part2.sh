#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# 修改openwrt登陆地址,把下面的 192.168.10.1 修改成你想要的就可以了
#sed -i 's/192.168.100.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# 修改主机名字，把 iStore OS 修改你喜欢的就行（不能纯数字或者使用中文）
# sed -i 's/OpenWrt/iStore OS/g' package/base-files/files/bin/config_generate

# ttyd 自动登录
# sed -i "s?/bin/login?/usr/libexec/login.sh?g" ${GITHUB_WORKSPACE}/openwrt/package/feeds/packages/ttyd/files/ttyd.config

# 添加自定义软件包
echo '
CONFIG_PACKAGE_luci-app-mosdns=y
CONFIG_PACKAGE_luci-app-adguardhome=y
CONFIG_PACKAGE_luci-app-openclash=y
' >> .config


# # Clone community packages to package/community
# mkdir package/community
# pushd package/community

# # Add extra wireless drivers
# svn co https://github.com/openwrt/openwrt/branches/openwrt-22.03/package/firmware
# svn co https://github.com/openwrt/openwrt/branches/openwrt-22.03/package/kernel
# popd

# # Enable AX210 driver and dependencies
# echo '
# CONFIG_PACKAGE_kmod-cfg80211=y
# CONFIG_PACKAGE_kmod-iwlwifi=y

# # Firmware
# CONFIG_PACKAGE_iwlwifi-firmware-ax200=y
# CONFIG_PACKAGE_iwlwifi-firmware-ax201=y
# CONFIG_PACKAGE_iwlwifi-firmware-ax210=y
# CONFIG_PACKAGE_iwlwifi-firmware-iwlwifi-9000-pu-b0-jf-b0=y

# # Network drivers
# CONFIG_PACKAGE_kmod-e1000e=y
# CONFIG_PACKAGE_kmod-i40e=y
# CONFIG_PACKAGE_kmod-ixgbe=y
# CONFIG_PACKAGE_kmod-usb-net-ax88179-178a=y

# # Network utilities
# CONFIG_PACKAGE_hostapd-common=y
# CONFIG_PACKAGE_hostapd-utils=y
# CONFIG_PACKAGE_iwinfo=y
# CONFIG_PACKAGE_wpad-basic=y
# CONFIG_PACKAGE_wpad-basic-wolfssl=y

# # Dual-band support
# CONFIG_PACKAGE_kmod-mac80211=y

# # Wireless testing
# CONFIG_PACKAGE_mac80211-hwsim=y
# CONFIG_PACKAGE_kmod-mac80211-hwsim=y

# # 60GHz band
# CONFIG_PACKAGE_mac80211_hwsim_devices_60ghz=y
# CONFIG_PACKAGE_crda=y
# CONFIG_PACKAGE_libnl-tiny=y
# CONFIG_PACKAGE_libopenssl=y
# CONFIG_PACKAGE_iw=y
# CONFIG_PACKAGE_kmod-reg-hints=y
# ' >> .config
