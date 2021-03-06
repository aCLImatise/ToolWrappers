version 1.0

task EnsemblExtractProteinCodingGenespy {
  input {
    File? annotation_file
    File? path_output_file
    String? species
    String? chromosome_pattern
    File? field_name
    File? log_file
    Boolean? quiet
    Boolean? verbose
    String var_8
  }
  command <<<
    ensembl_extract_protein_coding_genes_py \
      ~{var_8} \
      ~{if defined(annotation_file) then ("--annotation-file " +  '"' + annotation_file + '"') else ""} \
      ~{if defined(path_output_file) then ("--output-file " +  '"' + path_output_file + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(chromosome_pattern) then ("--chromosome-pattern " +  '"' + chromosome_pattern + '"') else ""} \
      ~{if defined(field_name) then ("--field-name " +  '"' + field_name + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    annotation_file: "Path of Ensembl gene annotation file (in GTF format). The file\\nmay be gzip'ed. If set to ``-``, read from ``stdin``."
    path_output_file: "Path of output file. If set to ``-``, print to ``stdout``,\\nand redirect logging messages to ``stderr``."
    species: "Species for which to extract genes. (This parameter is ignored\\nif ``--chromosome-pattern`` is specified.)"
    chromosome_pattern: "Regular expression that chromosome names have to match.\\nIf not specified, determine pattern based on\\n``--species``."
    field_name: "Rows in the GTF file that do not contain this value\\nin the third column are ignored."
    log_file: "Path of log file (if specified, report to stdout AND file."
    quiet: "Only output errors and warnings."
    verbose: "Enable verbose output. Ignored if --quiet is specified."
    var_8: "[-s {fly,human,mouse,worm,yeast,zebrafish}]"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_file = "${in_path_output_file}"
  }
}