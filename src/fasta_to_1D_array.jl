using BioSequences

seqs = []

input = open(FASTA.Reader, "/Users/lauriecannon/projects/Julia/Julia_binf/data/SARS-CoV-2/protein/covid_proteins.fasta")
for record in input
    push!(seqs, record)
end

close(input)
