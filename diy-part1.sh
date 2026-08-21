#!/bin/bash
#
# diy-part1.sh - OpenWrt DIY script part 1 (Before Update feeds)
# https://github.com/P3TERX/Actions-OpenWrt
#

# ============================================================
# 修复：避免重复添加 mmdvm feed
# 原逻辑是直接 echo >> feeds.conf.default，会与文件里已有的定义冲突
# 现在改为：仅当 mmdvm feed 不存在时才追加
# ============================================================

MMDVM_FEED="src-git mmdvm https://github.com/fndsz/mmdvm-op"

if grep -q "^src-git mmdvm" feeds.conf.default; then
    echo "✅ mmdvm feed 已存在于 feeds.conf.default，跳过重复添加"
else
    echo "$MMDVM_FEED" >> feeds.conf.default
    echo "➕ 已添加 mmdvm feed 到 feeds.conf.default"
fi

# ============================================================
# 可选：修改默认 LAN IP（按需取消注释）
# ============================================================
# sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# ============================================================
# 可选：添加其他自定义 feed（如果有的话）
# 示例：echo "src-git myfeed https://github.com/user/repo" >> feeds.conf.default
# ============================================================

echo "🎯 diy-part1.sh 执行完毕"
