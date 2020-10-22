#various julia sorts/ performance
#output: test/sorts_time.output
using Random

#different sorts
sortAscending(x) = sort(x);
sortAscending_inPlace(x) = sort!(x);
sortDescending(x) = sort(x, rev = true);
sortDescending_inPlace(x) = sort!(x, rev = true);
indexSort(x) = sortperm(x);

j = [1]
arr = rand(100000)
println("OK")

#compile before timing
sortAscending(j)
sortAscending_inPlace(j)
sortDescending(j)
sortDescending_inPlace(j)
indexSort(j)

#=
@time sortAscending(arr)
shuffle!(arr)

@time sortAscending_inPlace(arr)
shuffle!(arr)

@time sortDescending(arr)
shuffle!(arr)

@time sortDescending_inPlace(arr)
shuffle!(arr)

@time indexSort(arr)
@time shuffle!(arr) =#


#specify quicksort, merge, etc; nan arrays

@time sort(arr, alg = InsertionSort)
#shuffle!(arr)

#@time sort!(arr, alg = InsertionSort)
#shuffle!(arr)
println("ok")
