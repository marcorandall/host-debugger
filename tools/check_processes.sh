#!/bin/bash
echo "📋 Top CPU-consuming processes:"
ps aux --sort=-%cpu | head -n 10

echo -e "\n🧠 Top memory-consuming processes:"
ps aux --sort=-%mem | head -n 10
