#channels/tasks for stuff
include("/Users/lauriecannon/projects/Julia/Julia_binf/src/boilerplate/process_infile.jl")
infile = ("/Users/lauriecannon/projects/Julia/Julia_binf/data/testdata_100.txt");
data = tokensToArray(infile)

#data = ["1", "A", "1"]
arr = push!(findall(x->occursin("1",x), data))
#=
function swap(c::Channel)
    for i=1:length(arr)
        put!(c, arr[i])
    end

end

pipe = Channel(swap);
index = @async take!(pipe)
=#
function swap(c::Channel)
    for i=1:length(arr)
        put!(c, arr[i])
    end

    #replace(data[take!(pipe)], "1" => "A")

end

pipe = Channel(swap);
println("ok")
#@async data = replace(data[take!(pipe)], "1" => "A")

data = replace(data[take!(pipe)], "1" => "A")
println(data)
