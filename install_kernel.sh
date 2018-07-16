#!/bin/bash
mkdir -p ~/.local/share/jupyter/kernels/dask-tutorial
cp kernels/dask-tutorial/* ~/.local/share/jupyter/kernels/dask-tutorial/
sed "s#\${HOME}#$HOME#" kernels/dask-tutorial/kernel.json > ~/.local/share/jupyter/kernels/dask-tutorial/kernel.json
sed "s#\$HOME/ecam#$PWD#g" kernels/dask-tutorial/scipy-kernel.sh > ~/.local/share/jupyter/kernels/dask-tutorial/scipy-kernel.sh

