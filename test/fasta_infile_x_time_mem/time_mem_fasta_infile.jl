include("/Users/lauriecannon/projects/Julia/Julia_binf/src/fasta_infile.jl")
using FASTX
using BioSequences

outfile = open("test/fasta_infile_x_time_mem/outfiles/time_mem_fasta_infile.out", "w")
infile = ("data/SARS-CoV-2/protein/covid_proteins.fasta")

println(outfile, "time results for fasta_infile.jl \n(uses FASTX package)")
println(outfile,"input filesize (bytes): ")
println(outfile,stat(infile).size)

println(outfile,"\nfasta_to_array():")
println(outfile, @elapsed fasta_to_array("data/SARS-CoV-2/protein/covid_proteins.fasta"))
println(outfile,"\nfasta_to_ID_DESC_SEQ_arrays():")
println(outfile, @elapsed fasta_to_ID_DESC_SEQ_arrays(infile))
println(outfile, "\nfasta_get_id():")
println(outfile, @elapsed fasta_get_id(infile))
println(outfile, "\nfasta_get_description():")
println(outfile, @elapsed fasta_get_description(infile))

#measure multiple invocations because compilation time may affect first @time
println(outfile, "\nfasta_get_sequence():")
println(outfile, @elapsed fasta_get_sequence(infile))
println(outfile, @elapsed fasta_get_sequence(infile))
println(outfile, @elapsed fasta_get_sequence(infile))
println(outfile, @elapsed fasta_get_sequence(infile))
close(outfile)
