#LCannon.last update 10.10.20
using BioSequences

#reads in fasta file, returns array of the sequences
function fasta_get_seq_array(filename)
seqs = []
input = open(FASTA.Reader, filename)
    for record in input
        push!(seqs, record)
    end
close(input)
return seqs
end

#reads in fasta file, returns 3 arrays: ids, descriptions, sequences
function fasta_get_data_as_arrays(filename)
id = []
desc = []
seq = []
record = [ [id, desc, seq] ]
input = open(FASTA.Reader, filename)
    for record in input
    if(hasidentifier)
        id_x = FASTA.identifier(record)end
    if(hasdescription)
        desc_x = FASTA.description(record)end
    if(hassequence)
        seq_x = FASTA.sequence()end
    push!(id_x, id); push!(desc_x, desc); push!(seq_x, seq);
    end
close(input)
return id, desc, seq
end
