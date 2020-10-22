#Optimize various Input file functions

#=From outfiles:
without async: 3.685943941, 3.782235015, 4.004312407
with @async: 4.61e-6, 3.755e-6, 2.632e-6
=#

function readLine_bigFile()
    infile = ("/Users/lauriecannon/projects/Julia/Julia_binf/data/testdata.txt.txt")
    #add @async for concurrent tasks:
    @async data = readchomp(infile)
end

#checks
outfile = open("/Users/lauriecannon/projects/Julia/Julia_binf/scratch/large_infiles_tasks.output", "w")
println(outfile, @elapsed readLine_bigFile())
println(outfile, @elapsed readLine_bigFile())
println(outfile, @elapsed readLine_bigFile())


#tasks/threads for:
    #replace(line, "1" => "A")
    #push!(data, line)
