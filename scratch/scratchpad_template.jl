#template for doing stuff, testing times/performace of snippets
using Random
using ProfileView

function template()
    #outfile = open("/Users/lauriecannon/projects/Julia/Julia_binf/scratch/my_outfile.output", "w")
    #arr = []
    #println(outfile, arr)
    #close(outfile)




end

template()
@profiler template()
@time template()
