function make_buffer()
    A = fill(0.0, 3, 3)
    return get_buffer = () -> A
end

using FinEtools
using LinearAlgebra

struct Maker
    r::Vector{Float64}
    nk_e::Vector{Float64}
    nk::Vector{Float64}
    f3_e::Vector{Float64}
end

function Maker()
    Maker(fill(0.0, 3), fill(0.0, 3), fill(0.0, 3), [0.0, 0.0, 1.0])
end

(o::Maker)(s) = begin
    cross3!(o.r, o.nk, o.f3_e)
end

m = Maker()

m(1)

using BenchmarkTools

@btime m(1)