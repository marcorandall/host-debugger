#!/bin/bash

CONTAINER_NAME="host-debugger"
IMAGE_NAME="host-debugger"

# Run options
RUN_FLAGS="
  --pid=host
  --net=host
  --ipc=host
  --uts=host
  --cap-add=SYS_PTRACE
  --cap-add=NET_ADMIN
  -v /var/run/docker.sock:/var/run/docker.sock
  -v /var/log:/host/log
  -v $(pwd)/tools:/opt/tools
"

# Check if container exists
if docker ps -a --format '{{.Names}}' | grep -wq "$CONTAINER_NAME"; then
  # Check if it's running
  if docker ps --format '{{.Names}}' | grep -wq "$CONTAINER_NAME"; then
    echo "✅ Container '$CONTAINER_NAME' is already running."
    # Optional: attach to it
    docker exec -it "$CONTAINER_NAME" bash
  else
    echo "🔁 Container '$CONTAINER_NAME' exists but is stopped. Starting..."
    docker start "$CONTAINER_NAME"
    docker exec -it "$CONTAINER_NAME" bash
  fi
else
  echo "🚀 Container '$CONTAINER_NAME' does not exist. Creating and starting..."
  docker run -dit \
    --name "$CONTAINER_NAME" \
    $RUN_FLAGS \
    "$IMAGE_NAME"
  docker exec -it "$CONTAINER_NAME" bash
fi
