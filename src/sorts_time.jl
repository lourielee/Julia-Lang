#input numerical array, do various things with it. purpose: try different Julia things,
#   maybe boilerplate for other


function readToArray()

    infile = ("scratch/randNums100000.output")
    data = readchomp(infile)
    data = replace(data, "[" => "")
    data = replace(data, "]" => "")
    return split(data, ",")
end

#different sorts
sortAscending(x) = sort(x);
sortAscending_inPlace(x) = sort!(x);
sortDescending(x) = sort(x, rev = true);
sortDescending_inPlace(x) = sort!(x, rev = true);
indexSort(x) = sortperm(x);

j = [1]
numSet = readToArray();

#compile before timing
sortAscending(j)
sortAscending_inPlace(j)
sortDescending(j)
sortDescending_inPlace(j)
indexSort(j)

@time sortAscending(rand(1000000))
@time sortAscending(numSet)
@time sortAscending_inPlace(rand(1000000))
@time sortDescending(rand(1000000))
@time sortDescending_inPlace(rand(1000000))
@time indexSort(rand(1000000))


#TODO: create "random" shuffle!/scramble function(s)
