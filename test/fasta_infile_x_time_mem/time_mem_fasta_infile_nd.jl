include("/Users/lauriecannon/projects/Julia/Julia_binf/src/fasta_infile_no_dependency.jl")

outfile = open("test/fasta_infile_x_time_mem/outfiles/time_mem_fasta_infile_nd.out", "w")

println(outfile,"initialize():")
println(outfile, @elapsed initialize("data/SARS-CoV-2/protein/covid_proteins.fasta"))
println(outfile,"get_ID:")
println(outfile, @elapsed get_ID("data/SARS-CoV-2/protein/covid_proteins.fasta"))
println(outfile, "get_SEQ():")
println(outfile, @elapsed get_SEQ("data/SARS-CoV-2/protein/covid_proteins.fasta"))

#measure multiple invocations because compilation time may affect first @time
println(outfile, "get_ID_SEQ():")
println(outfile, @elapsed get_ID_DESC("data/SARS-CoV-2/protein/covid_proteins.fasta"))
println(outfile, @elapsed get_ID_DESC("data/SARS-CoV-2/protein/covid_proteins.fasta"))
println(outfile, @elapsed get_ID_DESC("data/SARS-CoV-2/protein/covid_proteins.fasta"))
println(outfile, @elapsed get_ID_DESC("data/SARS-CoV-2/protein/covid_proteins.fasta"))
close(outfile)
