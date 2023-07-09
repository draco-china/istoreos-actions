# iStore OS 固件

[![iStore使用文档](https://img.shields.io/badge/使用文档-iStore%20OS-brightgreen?style=flat-square)](https://doc.linkease.com/zh/guide/istoreos) [![最新固件下载](https://img.shields.io/github/v/release/draco-china/istoreos-rk35xx-actions?style=flat-square&label=最新固件下载)](../../releases/latest)

![支持设备](https://img.shields.io/badge/支持设备:-blueviolet.svg?style=flat-square) ![H66K](https://img.shields.io/badge/H66K-blue.svg?style=flat-square) ![H68K](https://img.shields.io/badge/H68K-blue.svg?style=flat-square) ![H69K](https://img.shields.io/badge/H69K-blue.svg?style=flat-square) ![R5S](https://img.shields.io/badge/R5S-blue.svg?style=flat-square) ![R6S](https://img.shields.io/badge/R6S-blue.svg?style=flat-square) ![R66S](https://img.shields.io/badge/R66S-blue.svg?style=flat-square) ![R68S](https://img.shields.io/badge/R68S-blue.svg?style=flat-square) ![STATION P2](https://img.shields.io/badge/STATION%20P2-blue.svg?style=flat-square) ![T68M](https://img.shields.io/badge/T68M-blue.svg?style=flat-square)

![设备选购](https://img.shields.io/badge/设备选购:-blueviolet.svg?style=flat-square) [![H66K](https://img.shields.io/badge/购买-H66K-blue.svg?style=flat-square)](https://item.taobao.com/item.htm?spm=a21n57.1.0.0.3346523cAcg3qM&id=719159534058&ns=1&abbucket=0#detail) [![H68K](https://img.shields.io/badge/购买-H68K-blue.svg?style=flat-square)](https://item.taobao.com/item.htm?spm=a21n57.1.0.0.3346523cAcg3qM&id=702787603594&ns=1&abbucket=0#detail) [![H69K](https://img.shields.io/badge/购买-H69K-blue.svg?style=flat-square)](https://item.taobao.com/item.htm?spm=a1z10.3-c-s.w4002-18501209652.51.69f86953zohktR&id=724801239256) [![H69K](https://img.shields.io/badge/购买-H66K/H68K/H69K%20配件-blue.svg?style=flat-square)](https://item.taobao.com/item.htm?spm=a1z10.5-c-s.w4002-18501209660.12.59f810054ljroP&id=700279146610)

## 默认配置

- IP: `http://192.168.100.1` or `http://iStoreOS.lan/`
- 用户名: `root`
- 密码: `password`
- 如果设备只有一个网口，则此网口就是 `LAN` , 如果大于一个网口, 默认第一个网口是 `WAN` 口, 其它都是 `LAN`
- 如果要修改 `LAN` 口 `IP` , 首页有个内网设置，或者用命令 `quickstart` 修改
- 北京时间每天 `0:00` 定时编译, `Release` 中只保留最新版本
- 历史版本在 `Actions` 中选择一个已经运行完成且成功的 `workflow` 在页面底部可以看到 `Annotations` 和 `Artifacts`
- `Annotations` 中的网盘失效时间一般是 1-3 天, `Artifacts` 需要登录 Github 才能下载

## 支持架构

### RK33xx 架构

| 设备       | 包名称                                                                    |
| ---------- | ------------------------------------------------------------------------- |
| R2S        | istoreos-rockchip-rk33xx-friendlyarm_nanopi-r2s-squashfs-combined.img.gz  |
| R4S        | istoreos-rockchip-rk33xx-friendlyarm_nanopi-r4s-squashfs-combined.img.gz  |
| R4SE       | istoreos-rockchip-rk33xx-friendlyarm_nanopi-r4se-squashfs-combined.img.gz |
| ROCKPRO64  | istoreos-rockchip-rk33xx-pine64_rockpro64-squashfs-combined.img.gz        |
| ROCK-PI-4A | istoreos-rockchip-rk33xx-radxa_rock-pi-squashfs-combined.img.gz           |

### RK35xx 架构

| 设备           | 包名称                                                                   |
| -------------- | ------------------------------------------------------------------------ |
| R66S/R68S      | istoreos-rockchip-rk35xx-fastrhino_r6xs-squashfs-combined.img.gz         |
| STATION-P2     | istoreos-rockchip-rk35xx-firefly_station-p2-squashfs-combined.img.gz     |
| NANOPI-R5S     | istoreos-rockchip-rk35xx-friendlyarm_nanopi-r5s-squashfs-combined.img.gz |
| NANOPI-R6S     | istoreos-rockchip-rk35xx-friendlyarm_nanopi-r6s-squashfs-combined.img.gz |
| H66K/H68K/H69K | istoreos-rockchip-rk35xx-hinlink_opc-h6xk-squashfs-combined.img.gz       |
| T68M           | istoreos-rockchip-rk35xx-lyt_t68m-squashfs-combined.img.gz               |

## x86 架构

| 设备       | 包名称                                               |
| ---------- | ---------------------------------------------------- |
| X86-64     | istoreos-x86_64-generic-squashfs-combined.img.gz     |
| X86-64-EFI | istoreos-x86_64-generic-squashfs-combined-efi.img.gz |

## 鸣谢

- [istoreos](https://github.com/istoreos/istoreos)
- [P3TERX/Actions-OpenWrt](https://github.com/P3TERX/Actions-OpenWrt)
- [Microsoft Azure](https://azure.microsoft.com)
- [GitHub Actions](https://github.com/features/actions)
- [OpenWrt](https://github.com/openwrt/openwrt)
- [Lean&#39;s OpenWrt](https://github.com/coolsnowwolf/lede)
- [tmate](https://github.com/tmate-io/tmate)
- [mxschmitt/action-tmate](https://github.com/mxschmitt/action-tmate)
- [csexton/debugger-action](https://github.com/csexton/debugger-action)
- [Cowtransfer](https://cowtransfer.com)
- [WeTransfer](https://wetransfer.com/)
- [Mikubill/transfer](https://github.com/Mikubill/transfer)
- [softprops/action-gh-release](https://github.com/softprops/action-gh-release)
- [ActionsRML/delete-workflow-runs](https://github.com/ActionsRML/delete-workflow-runs)
- [dev-drprasad/delete-older-releases](https://github.com/dev-drprasad/delete-older-releases)
- [peter-evans/repository-dispatch](https://github.com/peter-evans/repository-dispatch)
