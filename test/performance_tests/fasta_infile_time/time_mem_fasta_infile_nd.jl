include("/Users/lauriecannon/projects/Julia/Julia_binf/src/fasta_infile_no_dependency.jl")

outfile = open("test/fasta_infile_x_time_mem/outfiles/time_mem_fasta_infile_nd.out", "w")
infile = ("data/SARS-CoV-2/protein/covid_proteins.fasta")

println(outfile, "time results for fasta_infile_no_dependency.jl\n(does not use FASTX package)")
println(outfile,"input filesize (bytes): ")
println(outfile,stat(infile).size)

println(outfile,"\ninitialize():")
println(outfile, @elapsed initialize(infile))
println(outfile,"\nget_ID:")
println(outfile, @elapsed get_ID(infile))
println(outfile, "\nget_SEQ():")
println(outfile, @elapsed get_SEQ(infile))

#measure multiple invocations because compilation time may affect first @time
println(outfile, "\nget_ID_SEQ():")
println(outfile, @elapsed get_ID_DESC(infile))
println(outfile, @elapsed get_ID_DESC(infile))
println(outfile, @elapsed get_ID_DESC(infile))
println(outfile, @elapsed get_ID_DESC(infile))
close(outfile)
