#to Optimize:
function readLine_bigFile()
    infile = ("/data/testdata.txt")
    data = []
    for line in eachline(infile)
        push!(data, line)
    end
end

#checks
outfile = open("/scratch/scratch_output.txt", "w")
println(outfile, @elapsed check())
println(outfile, "\n\noutput @elapsed for 20 mil lines") #~20-30 seconds
