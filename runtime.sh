#!/bin/sh
# Run the latest version of IRPFeDocker.
set -eu

xhost +local:docker

docker run \
  --rm \
  -e DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v ~/IRPF2021:/home/irpf/ProgramasRFB \
  ojmarcelino/irpf

xhost -local:docker
