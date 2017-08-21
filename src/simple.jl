export simple

function simple(a::Any, depth=0)
    a
end

function simple(arr::AbstractArray, depth=0)
    out = string("[", join([simple(x, depth+1) for x in arr], ", "), "]")
    0 == depth ?  println(out) : out
end

function simple(dict::Dict, depth=0)
    output = []
    for (k, v) in dict
        push!(output, string(simple(k, simple), ": ", simple(v, depth+1)))
    end
    out = string("{", join(output, ", "), "}")
    0 == depth ?  println(out) : out
end
