#LCannon.Last update 10.11.20.
using BioSequences
using FASTX

#reads in fasta file, splits and returns one array
function fasta_to_array(filename)
seqs = []
input = open(FASTA.Reader, filename)
    for record in input
        push!(seqs, record)
    end
close(input)
return seqs
end

#reads in fasta file, creates array of arrays: ids, descriptions, sequences
function fasta_to_ID_DESC_SEQ_arrays(filename)
id = []
desc = []
seq = []
record = [ id, desc, seq ]
input = open(FASTA.Reader, filename)
    for record in input
        push!(id, FASTA.identifier(record))
        push!(desc, FASTA.description(record))
        push!(seq, FASTA.sequence(record))
    end
close(input)
return record
end

#returns ID's of fasta records as array
function fasta_get_id(filename)
    record = fasta_to_ID_DESC_SEQ_arrays(filename)
    return first(record)
end

#returns description of fasta records as array
function fasta_get_description(filename)
    record = fasta_to_ID_DESC_SEQ_arrays(filename)
    return record[2][:]
end

#returns sequences of fasta records as array
function fasta_get_sequence(filename)
    record = fasta_to_ID_DESC_SEQ_arrays(filename)
    return last(record)
end
