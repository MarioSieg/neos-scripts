#!/usr/bin/env bash
set -euo pipefail

docker build -t neo-dev-image .

docker run -d \
  --name dev-container \
  --restart=always \
  --gpus all \
  -p 2222:22 \
  neo-dev-image
