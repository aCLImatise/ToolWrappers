version 1.0

task KaijuaddTaxonNames {
  input {
    File? name_input_file
    File? name_output_file
    File? name_nodesdmp_file
    File? name_namesdmp_file
    Boolean? unclassified_reads_contained
    Boolean? print_full_path
    Boolean? print_taxon_path
    Boolean? enable_verbose_output
  }
  command <<<
    kaiju_addTaxonNames \
      ~{if defined(name_input_file) then ("-i " +  '"' + name_input_file + '"') else ""} \
      ~{if defined(name_output_file) then ("-o " +  '"' + name_output_file + '"') else ""} \
      ~{if defined(name_nodesdmp_file) then ("-t " +  '"' + name_nodesdmp_file + '"') else ""} \
      ~{if defined(name_namesdmp_file) then ("-n " +  '"' + name_namesdmp_file + '"') else ""} \
      ~{if (unclassified_reads_contained) then "-u" else ""} \
      ~{if (print_full_path) then "-p" else ""} \
      ~{if (print_taxon_path) then "-r" else ""} \
      ~{if (enable_verbose_output) then "-v" else ""}
  >>>
  parameter_meta {
    name_input_file: "Name of input file"
    name_output_file: "Name of output file. If not specified, output will be printed to STDOUT."
    name_nodesdmp_file: "Name of nodes.dmp file"
    name_namesdmp_file: "Name of names.dmp file."
    unclassified_reads_contained: "Unclassified reads are not contained in the output."
    print_full_path: "Print full taxon path."
    print_taxon_path: "Print taxon path containing only ranks specified by a comma-separated list,\\nfor example: superkingdom,phylum,class,order,family,genus,species"
    enable_verbose_output: "Enable verbose output."
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}