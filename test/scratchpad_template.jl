#template for doing stuff, testing times/performace of snippets
using Random
using ProfileView

function sortRand()
    outfile = open("/Users/lauriecannon/projects/Julia/Julia_binf/scratch/my_outfile.output", "w")
    arr = (rand(10000000))

    #prints output to text file:
    println(outfile, arr)
    close(outfile)

end

sortRand()
@profiler sortRand()
@time sortRand()
