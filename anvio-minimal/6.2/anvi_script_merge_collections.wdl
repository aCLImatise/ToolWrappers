version 1.0

task Anviscriptmergecollections {
  input {
    File? o
    String? contigs_db
    File? s_input_files
    File? output_file
  }
  command <<<
    anvi_script_merge_collections \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(contigs_db) then ("--contigs-db " +  '"' + contigs_db + '"') else ""} \
      ~{if defined(s_input_files) then ("-i " +  '"' + s_input_files + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    o: ""
    contigs_db: "Anvi'o contigs database generated by 'anvi-gen-\\ncontigs'"
    s_input_files: "(S) [FILE(S) ...], --input-files FILE(S) [FILE(S) ...]\\nInput file(s). TAB-delimited input files should have\\ntwo columns, where the first column holds the contig\\nname, and the second one the bin id. This is the\\nstandard ouptut of the program anvi-export-collection."
    output_file: "Output file name.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_o = "${in_o}"
    File out_output_file = "${in_output_file}"
  }
}