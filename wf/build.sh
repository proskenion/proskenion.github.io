#!/bin/bash -e
PROJECT_ROOT=$(git rev-parse --show-toplevel)
SRC=$PROJECT_ROOT/wf
pandoc ${SRC}/proskenion.md -o ${SRC}/proskenion.tex
sed -i -e 's/{\[}\([0-9]\){\]}/\\cite{\1}/g' ${SRC}/*.tex
rm -rf ${SRC}/*-e