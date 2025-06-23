#!/bin/bash
echo "🧪 Checking network interfaces:"
ip a

echo -e "\n🌍 Testing external connectivity:"
curl -s https://api.ipify.org && echo

echo -e "\n📡 DNS resolution test:"
dig google.com
