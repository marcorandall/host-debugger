#!/bin/bash
echo "🌐 Open ports and listening services:"
ss -tuln | grep LISTEN

echo -e "\n🔗 Associated processes:"
lsof -i -P -n | grep LISTEN

