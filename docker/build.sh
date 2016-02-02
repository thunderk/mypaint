#!/bin/sh

set -e
dir=$(dirname $0)
dir=$(realpath $dir)
cd $dir
docker build -t thunderk/mypaint .
docker run --rm --volume="$(dirname $dir):/code" thunderk/mypaint scons
cd -

