[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active)
[![Build Status](https://travis-ci.com/PetrKryslUCSD/FinEtoolsMeshing.jl.svg?branch=master)](https://travis-ci.com/PetrKryslUCSD/FinEtoolsMeshing.jl)
[![Latest documentation](https://img.shields.io/badge/docs-latest-blue.svg)](https://petrkryslucsd.github.io/FinEtoolsMeshing.jl/dev)

# FinEtoolsMeshing: Meshing of various geometries, techniques of processing meshes (import, export).

![Alt Color-coded mesh of the lug plate](http://hogwarts.ucsd.edu/~pkrysl/site.images/lug-color-coded-50.png)

[`FinEtools`](https://github.com/PetrKryslUCSD/FinEtools.jl.git) is a package
for basic operations on finite element meshes. `FinEtoolsMeshing` uses `FinEtools` to mesh various geometries,
to process meshes, export&import meshes, etc.

## News

- 06/17/2024: Updated for FinEtools 8.
- 01/07/2023: Updated for Julia 1.10 and FinEtools 7.3.0.


[Past news](#past-news)


## Examples

Many examples  are available.
Begin with changing your working directory to the `examples` folder. Activate
and instantiate the examples environment.
```
using Pkg
Pkg.activate(".")
Pkg.instantiate()
```
There are a number of examples covering statics and dynamics. The examples may
be executed as described in the  [conceptual guide to
`FinEtools`](https://petrkryslucsd.github.io/FinEtools.jl/latest).


## <a name="past-news"></a>Past news

- 05/22/2021: Updated for Julia 1.6.
- 08/28/2020: Dependencies have been updated to work with Julia 1.5.1.
- 01/23/2020: Dependencies have been updated to work with Julia 1.3.1.
- 07/18/2019: Tutorial has been added.
- 07/13/2019: Applications are now separated  out from the `FinEtools` package.
