#!/bin/bash
module use /usr/local/software/jureca/OtherStages
module load Stages/Devel-2018a
module load Intel
module load ParaStationMPI
module load COMPSs/2.3-Python-3.6.5
module load dask-jobqueue/0.3.0-Python-3.6.5
module load scikit-image/0.14.0-Python-3.6.5
module load h5py
module load scikit-image
module load pybind11
module load numba/0.37.0-Python-3.6.5
module load CMake
export LD_LIBRARY_PATH=$HOME/ecam/code/point/build:$HOME/ecam/code/text_stats/build:$LD_LIBRARY_PATH
exec $(which python) -m ipykernel $@
