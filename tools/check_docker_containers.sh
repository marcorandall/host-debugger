#!/bin/bash
echo "🐳 Listing Docker containers..."
docker ps -a

echo -e "\n📂 Container storage usage:"
docker system df

echo -e "\n🧱 Container disk usage details:"
docker container ls -q | xargs -n1 docker container inspect --format '{{.Name}} - {{.HostConfig.LogConfig.Type}} - {{.LogPath}}'

