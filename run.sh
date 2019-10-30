#!/bin/bash

pushd /tmp
wget https://github.com/jgm/pandoc/releases/download/2.7.3/pandoc-2.7.3-linux.tar.gz
tar xvfz pandoc-2.7.3-linux.tar.gz
export PATH=/tmp/pandoc-2.7.3/bin/:$PATH
popd

pushd sphinx
make html
make latexpdf
cp -vf build/latex/report.pdf build/html
popd

pushd slides
make
cp -vf slides.pdf ../sphinx/build/html
popd
