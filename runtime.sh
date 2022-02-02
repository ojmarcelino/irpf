#!/bin/sh
# Run the latest version of ojmarcelino/irpf.
set -eu

xhost +local:docker

mkdir -p ~/ProgramasRFB

docker run \
  --rm \
  -e DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v ~/ProgramasRFB:/home/irpf/ProgramasRFB \
  ojmarcelino/irpf

xhost -local:docker
