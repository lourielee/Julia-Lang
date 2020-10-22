#*rewrite fasta_infile with no external package dependencies, play around with various julia things along the way

#helper function: reads fasta file to array
function initialize(filename)
    infile = filename
    data = readchomp(infile)
    return split(data, "\n\n")
end

#returns Array{Any,1} of fasta IDs
function get_ID(filename)
    data_array = initialize(filename)
    ID = []
    for record in data_array
        temp = replace(record, ">" => "")
        push!(ID, first(split(temp, " ", limit = 2)))
    end
    return ID
end

#returns sequences in fasta as Array{Any,1}
function get_SEQ(filename)
    data_array = initialize(filename)
    RESULT = []
    for record in data_array
        temp = last(split(record, "\n", limit = 2))
        seq = replace(temp, "\n" => "")
        push!(RESULT, seq)
    end
    return RESULT
end

#returns IDs and descriptions in fasta as Array{Any,1}
function get_ID_DESC(filename)
    FASTA = initialize(filename)
    ID_DESC = []
    for record in FASTA
        first_line_fasta = first(split(record, "\n"))
        push!(ID_DESC, replace(first_line_fasta, ">" => ""))
    end
    return ID_DESC
end
