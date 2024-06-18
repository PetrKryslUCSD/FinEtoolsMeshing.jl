module fibers_examples
using FinEtools
using Targe2

function fibers_mesh()
    nr = 3
    a = 1.0
    R = 1.0 
    h = R / 2
    d = a + R + (nr - 1) * (a + 2 * R) + a + R
    Lz = 2.0 * d
    nlayers = Int(ceil(Lz / h))
    input = """
    curve 1 line 0 0 $(d) 0
    curve 2 line $(d) 0 $(d) $(d)
    curve 3 line $(d) $(d) 0 $(d)
    curve 4 line 0 $(d) 0 0 
    """ 
    p = 1
    for r in 1:nr
        for c in 1:nr 
            cx = a + R + (r - 1) * (a + 2 * R)
            cy = a + R + (c - 1) * (a + 2 * R)
            input *= "\n" * "curve $(4+p) circle center $(cx) $(cy) radius $R"
            p += 1
        end
    end
    input *= "\n" * 
    """
    subregion 1  property 1 boundary 1 2 3 4 hole """
    p = 1
    for r in 1:nr
        for c in 1:nr
            input *= " $(-(4+p))"
            p += 1
        end
    end
    input *= "\n" * 
    """
    subregion 2  property 2 boundary """
    p = 1
    for r in 1:nr
        for c in 1:nr
            input *= " $(+(4+p))"
            p += 1
        end
    end
    input *= "\n" * 
    """    
    m-ctl-point constant $h
    """
    
    mesh = triangulate(input)
    
    fens = FENodeSet(mesh.xy)
    fes = FESetT3(mesh.triconn)
    label = fill(0, count(fes))
    for i in eachindex(mesh.trigroups)
        for j in mesh.trigroups[i]
            label[j] = i
        end
    end
    setlabel!(fes, label)
    #  = triconn,  in  = trigroups, edgeconn = edgeconn, edgegroups = edgegroups);

    fens, fes = T4extrudeT3(
        fens,
        fes,
        nlayers,
        (X, layer) -> [X[1], X[2], layer * Lz / nlayers],
    )

    File =  "fibers_mesh.vtk"
    vtkexportmesh(File, fens, fes; scalars=[("label", fes.label)])
    @async run(`"paraview.exe" $File`)

end # fibers_mesh


function allrun()
    println("#####################################################")
    println("# fibers_mesh ")
    fibers_mesh()
    return true
end # function allrun

@info "All examples may be executed with "
println("using .$(@__MODULE__); $(@__MODULE__).allrun()")

end # module
nothing
