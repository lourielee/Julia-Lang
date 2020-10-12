#*rewrite fasta_infile with no external package dependencies, play around with various julia things along the way

#helper function: reads fasta file to array
function initialize()
    infile = "data/SARS-CoV-2/protein/covid_proteins.fasta"
    data = readchomp(infile)
    return split(data, "\n\n")

end


#returns array of fasta IDs
function get_ID()
    data_array = initialize()
    println(length(data_array))
    id = []
    for record in data_array
        push!(id, first(split(record, " ", limit = 2)))
    end

    outfile0 = open("scratch/test_fasta_no_dependency_array_len.out", "w")
    println(outfile0, "&")
    println(outfile0, data_array)
    close(outfile0)
    return id
end

function get_SEQ()
    data_array = initialize()
    SEQ = []
    outfile = open("scratch/output_test_fasta_no_dependency_2.out", "w")
    println(outfile, "OK")
    for record in data_array
        #temp1 = split(record, " ", limit=2))
        #temp2 = split(record, r"\n(.*?)"))
        #split(temp, "")
        #push!(SEQ, last(split(record, r"\n(.*?)")))
        push!(SEQ, replace(record, "\n" => ""))
        println(outfile, "ok")
        println(outfile, SEQ)
    end
close(outfile)
end


#outfile = open("scratch/output_test_fasta_no_dependency.out", "w")
#println(outfile, "IDs")
#println(outfile, id)
#close(outfile)


#get_ID()
get_SEQ()
