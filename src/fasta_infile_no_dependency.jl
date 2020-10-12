#rewrite fasta_infile with no external package dependencies, play around with various julia things along the way
get_ID()

function initialize()
    infile = "data/SARS-CoV-2/protein/covid_proteins.fasta"
    data = readchomp(infile)
    return split(data, "\n\n")
end

function get_ID()
    data_array = initialize()



outfile = open("scratch/output_test_fasta_no_dependency.out", "w")
println(outfile, "TESTOUTo")
println(outfile, data_array)

println(data_array)
close(outfile)
end
