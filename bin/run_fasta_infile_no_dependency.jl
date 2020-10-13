include("src/fasta_infile_no_dependency.jl")
infile = ("data/SARS-CoV-2/protein/covid_proteins.fasta")

outfile_1 = open("scratch/fasta_infile_nd_ID.out", "w")
println(outfile_1, "#Output: get_ID(filename)")
println(outfile_1, get_ID(infile))
close(outfile_1)

outfile_2 = open("scratch/fasta_infile_nd_SEQ.out", "w")
println(outfile_2, "#Output: get_SEQ(filename)")
println(outfile_2, get_SEQ(infile))
close(outfile_2)

outfile_3 = open("scratch/fasta_infile_nd_IDDESC.out", "w")
println(outfile_3, "#Output: get_ID_DESC(filename)")
println(outfile_3, get_ID_DESC(infile))
close(outfile_3)
