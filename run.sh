#!/bin/bash

pushd sphinx
make html
make latexpdf
cp build/latex/report.pdf build/html
popd

pushd slides
make
cp slides.pdf ../sphinx/build/html
popd
