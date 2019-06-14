# Conda build scripts for PyMesh

### Instructions

* Run `docker run -ti --rm -v (pwd):/build continuumio/miniconda /bin/bash`
* Run `conda install conda-build anaconda-client`
* Run `conda build .`
* If successful run `anaconda upload <path to build output>`

