using Random
using ProfileView

function sortRand()
    outfile = open("/Users/lauriecannon/projects/Julia/Julia_binf/scratch/my_outfile.output", "w")
    arr = (rand(10000000))
    println(outfile, arr)
    close(outfile)
end

function printSymbol(symb)
    symb = string(symb)
    println(symb)
end

function printString(str::String)
    println(str)
end

prints(symb::Symbol) = printSymbol(symb)
prints(symb::String) = print_string(symb)


printSymbol("Hi")
printString("Hi")
#@time printSymbol("Hi")
#@time printString("Hi")
