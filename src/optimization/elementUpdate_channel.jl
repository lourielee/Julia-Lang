#use channel
include("/Users/lauriecannon/projects/Julia/Julia_binf/src/boilerplate/process_infile.jl")

outfile = open("/Users/lauriecannon/projects/Julia/Julia_binf/scratch/arbitrary_towrite.txt", "w");
infile = ARGS[1]
data = tokensToArray(infile)
arr = push!(findall(x->occursin("1",x), data))

function put_channel(c::Channel)
    for i=1:length(arr)
        put!(c, arr[i])
    end
end

function take_channel(c::Channel, data)
    myData = data
    for i in c
        println(outfile,replace(myData, myData[i] => "A"))
    end
    println(outfile, myData)
    return myData
end

function start()
    pipe = Channel(put_channel)
    updated = take_channel(pipe, data)
end

start()
