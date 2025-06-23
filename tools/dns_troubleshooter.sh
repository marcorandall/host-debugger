#!/bin/bash
echo "📡 DNS Lookup for google.com:"
dig google.com

echo -e "\n🌍 Using public DNS servers:"
dig @1.1.1.1 google.com
dig @8.8.8.8 google.com

echo -e "\n🧪 DNS Resolver Configuration:"
cat /etc/resolv.conf

