#print/writing to file performance
using Random
using ProfileView

# @time output file: = test/sort_rand_fileWrite_time.output

function sortRand()
    outfile3 = open("/Users/lauriecannon/projects/Julia/Julia_binf/scratch/sort_rand_fileWrite_bin.output", "w")
    outfile2 = open("/Users/lauriecannon/projects/Julia/Julia_binf/scratch/sort_rand_fileWrite__text.output", "w")
    arr = sort!(rand(1000))

    #prints output to binary file:
    write(outfile3, arr)

    #prints output to text file:
    println(outfile2, arr)

    close(outfile3)
    close(outfile2)
end

#converts binary to text,not working
function readFile()
    file = IOStream("/scratch/mem_test_bin.ouput")
    N = stat(file).size
    data=  AbstractArray{UInt8, Any}

    #throws parameter type mismatch error:
    convert = readbytes!(file, data, N)
    #other binary conversion: reinterpret(), convert(), read!()

    outfile = open("/scratch/convert_bin.output", "w")
    println(outfile, read!(file, convert))
    close(outfile)
end


#for timings: run println OR write
#first invocation may be skewed by compile time
@time sortRand()
@time sortRand()
@time sortRand()
@time sortRand()
@time sortRand()
@time sortRand()

#readFile()
