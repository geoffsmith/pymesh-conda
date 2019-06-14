# Conda build scripts for PyMesh

A conda build configuration to create a conda package for PyMesh https://github.com/PyMesh/PyMesh. I build it using a linux docker container, but this should also work on OSX. If you need windows support, you'll need to create a build.bat equivalent to build.sh.


### Build Instructions

* From this directory, run `docker run -ti --rm -v ``pwd``:/build continuumio/miniconda /bin/bash`
* Run `conda install conda-build anaconda-client`
* Run `cd /build; conda build .`
* Login to anaconda with `anaconda login`
* If successful run `anaconda upload <path to build output>`



### Install

I've already built binaries for Linux (and I'll do OSX soon) which you can get by running

`conda install -c hotfigs pymesh`

