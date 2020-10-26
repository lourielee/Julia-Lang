#use channel and asynchronous tasks
include("/src/boilerplate/process_infile.jl")
outfile = open("/scratch/arbitrary_towrite.txt", "w");
infile = ("/data/testdata_100.txt");
data = tokensToArray(infile)
arr = push!(findall(x->occursin("1",x), data))

function put_channel(c::Channel)
    @async for i=1:length(arr) #tasks: @async
        put!(c, arr[i])
    end
end

function take_channel(c::Channel, data)
    myData = data
    for i in c
        myData = replace(myData, myData[i] => "A")
    end
    println(outfile, myData)
    return myData
end

function start()
    pipe = Channel(put_channel)
    updated = take_channel(pipe, data)
end

start()
@time start()
@time start()
@time start()

#=
without async tasks (input 100 lines, 100x"1A"):
  4.051466 seconds (2.14 M allocations: 1.605 GiB, 4.37% gc time)
  4.057526 seconds (2.14 M allocations: 1.605 GiB, 4.08% gc time)
  4.032222 seconds (2.14 M allocations: 1.605 GiB, 4.26% gc time)
with async tasks :
  0.004885 seconds (30.26 k allocations: 1.079 MiB)
  0.004910 seconds (30.25 k allocations: 1.078 MiB)
  0.005314 seconds (30.25 k allocations: 1.078 MiB)
=#
