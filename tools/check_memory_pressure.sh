#!/bin/bash
echo "🧠 Memory usage snapshot:"
free -h

echo -e "\n🔍 Top memory consumers:"
ps aux --sort=-%mem | head -n 10

