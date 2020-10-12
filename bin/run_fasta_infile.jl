include("src/fasta_infile.jl")
infile = ARGS[1]

outfile_1 = open("scratch/output_test_fasta_infile_1.out", "w")
println(outfile_1, "#Test output: fasta_to_array(filename)")
println(outfile_1, fasta_to_array(infile))
close(outfile_1)

outfile_2 = open("scratch/output_test_fasta_infile_2.out", "w")
println(outfile_2, "#Test output: fasta_to_ID_DESC_SEQ_arrays(filename)")
println(outfile_2, fasta_to_ID_DESC_SEQ_arrays(infile))
close(outfile_2)

outfile_3 = open("scratch/output_test_fasta_infile_3.out", "w")
println(outfile_3, "#Test output: fasta_get_id(filename)")
println(outfile_3, fasta_get_id(infile))
close(outfile_3)

outfile_4 = open("scratch/output_test_fasta_infile_4.out", "w")
println(outfile_4, "#Test output: fasta_get_description(filename)")
println(outfile_4, fasta_get_description(infile))
close(outfile_4)

outfile_5 = open("scratch/output_test_fasta_infile_5.out", "w")
println(outfile_5, "#Test output: fasta_get_sequence(filename)")
println(outfile_5, fasta_get_sequence(infile))
close(outfile_5)

#confirm in console
println("done")
