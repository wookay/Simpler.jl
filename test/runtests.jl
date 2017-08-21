using Simpler
using Base.Test

d = Dict("a" => [Dict("x"=>1,"y"=>2)])
@test """Dict("a"=>Dict{String,Int64}[Dict("x"=>1,"y"=>2)])""" == string(d)
@test "{a: [{x: 1, y: 2}]}" == simple(d, 1)
