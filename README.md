[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active)
[![Build Status](https://travis-ci.com/PetrKryslUCSD/FinEtoolsMeshing.jl.svg?branch=master)](https://travis-ci.com/PetrKryslUCSD/FinEtoolsMeshing.jl)
[![Latest documentation](https://img.shields.io/badge/docs-latest-blue.svg)](https://petrkryslucsd.github.io/FinEtoolsMeshing.jl/dev)

# FinEtoolsMeshing: Meshing of various geometries, techniques of processing meshes (import, export).

![Alt Color-coded mesh of the lug plate](http://hogwarts.ucsd.edu/~pkrysl/site.images/lug-color-coded-50.png)

[`FinEtools`](https://github.com/PetrKryslUCSD/FinEtools.jl.git) is a package
for basic operations on finite element meshes. `FinEtoolsMeshing` uses `FinEtools` to mesh various geometries,
to process meshes, export&import meshes, etc.

## News

- 05/22/2021: Updated for Julia 1.6.
- 08/28/2020: Dependencies have been updated to work with Julia 1.5.1.
- 01/23/2020: Dependencies have been updated to work with Julia 1.3.1.


[Past news](oldnews.md)


## How to test the package

Here is a record of a session to install this package and test it. You should
see something similar. The git bash running on Windows 10 was used in this
example.

Clone the repo:
```
$ git clone https://github.com/PetrKryslUCSD/FinEtoolsMeshing.jl.git
Cloning into 'FinEtoolsMeshing.jl'...
remote: Enumerating objects: 25, done.
remote: Counting objects: 100% (25/25), done.
remote: Compressing objects: 100% (20/20), done.
remote: Total 25 (delta 1), reused 13 (delta 0), pack-reused 0
Unpacking objects: 100% (25/25), done.
```
Change your working directory, and run Julia:
```
PetrKrysl@Spectre MINGW64 /tmp/exp
$ cd FinEtoolsMeshing.jl/

PetrKrysl@Spectre MINGW64 /tmp/exp/FinEtoolsMeshing.jl (master)
$ julia
               _
   _       _ _(_)_     |  Documentation: https://docs.julialang.org
  (_)     | (_) (_)    |
   _ _   _| |_  __ _   |  Type "?" for help, "]?" for Pkg help.
  | | | | | | |/ _` |  |
  | | |_| | | | (_| |  |  Version 1.3.0-DEV.466 (2019-06-28)
 _/ |\__'_|_|_|\__'_|  |  Commit 8d4f6d24c0 (14 days old master)
|__/                   |
```
Activate and instantiate the environment:
```
(v1.3) pkg> activate .; instantiate
Activating environment at `C:\Users\PetrKrysl\Documents\Work-in-progress\tmp\FinEtoolsMeshing.jl\Project.toml`
  Updating registry at `C:\Users\PetrKrysl\.julia\registries\General`
  Updating git-repo `https://github.com/JuliaRegistries/General.git`

(FinEtoolsMeshing) pkg>
```
Test the package:
```
(FinEtoolsMeshing) pkg> test
   Testing FinEtoolsMeshing
 Resolving package versions...
Test Summary: | Pass  Total
Meshing       |   46     46
 57.309493 seconds (597.63 M allocations: 67.252 GiB, 19.33% gc time)
   Testing FinEtoolsMeshing tests passed
```

## Examples


There are a number of examples. The examples may
be executed as described in the  [conceptual guide to
`FinEtools`](https://petrkryslucsd.github.io/FinEtools.jl/latest).
