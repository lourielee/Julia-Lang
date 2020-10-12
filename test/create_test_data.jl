#create test data file for benchmarking
#source: https://stackoverflow.com/questions/56061976/which-is-faster-read-or-readline-or-readlines-with-respect-file-io-in-jul

open("./data/testdata.txt", "w") do f
    for i in 1:10^6
        println(f, "a"^100)
    end
end
