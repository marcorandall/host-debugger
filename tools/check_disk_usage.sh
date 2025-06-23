#!/bin/bash
echo "📦 Disk usage by mount point:"
df -hT | grep -v tmpfs

echo -e "\n🧹 Top 10 directories consuming space:"
du -h / | sort -hr | head -n 10

