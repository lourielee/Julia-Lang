#"original" times for swapping/editing file, to optimize using channels
#output time (1 mil lines "1A" x100 per line): 2277.304866 seconds (1.01 G allocations: 53.429 GiB, 86.75% gc time)

include("/Users/lauriecannon/projects/Julia/Julia_binf/src/boilerplate/process_infile.jl")
infile = ("/Users/lauriecannon/projects/Julia/Julia_binf/data/testdata_mil.txt")
outfile = open("/Users/lauriecannon/projects/Julia/Julia_binf/scratch/elementSwap_original.output", "w")

function elementSwap()
    data = tokensToArray(infile)
    data = replace(data, "1" => "A")
    return data
end

println(outfile, elementSwap())
@time elementSwap()
