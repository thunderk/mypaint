#!/bin/bash

function finish {
    xhost -
}
trap finish EXIT

set -e
xhost +
dir=$(dirname $0)
dir=$(realpath $dir)
cd $dir
docker run --rm --volume="$(dirname $dir):/code" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" --env="DISPLAY" thunderk/mypaint ./mypaint
cd -

