version 1.0

task Amrfinder {
  input {
    Boolean? update
    File? protein
    File? nucleotide
    File? gff
    Boolean? p_gap
    Directory? database
    Float? ident_min
    Int? coverage_min
    String? organism
    Boolean? list_organisms
    Int? translation_table
    Boolean? plus
    Boolean? report_common
    File? mutation_all
    Directory? blast_bin
    File? write_output_outputfile
    Boolean? quiet
    Boolean? g_pipe_org
    String? parm
    Int? threads
    Boolean? debug
    File? log
  }
  command <<<
    amrfinder \
      ~{if (update) then "--update" else ""} \
      ~{if defined(protein) then ("--protein " +  '"' + protein + '"') else ""} \
      ~{if defined(nucleotide) then ("--nucleotide " +  '"' + nucleotide + '"') else ""} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if (p_gap) then "--pgap" else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(ident_min) then ("--ident_min " +  '"' + ident_min + '"') else ""} \
      ~{if defined(coverage_min) then ("--coverage_min " +  '"' + coverage_min + '"') else ""} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if (list_organisms) then "--list_organisms" else ""} \
      ~{if defined(translation_table) then ("--translation_table " +  '"' + translation_table + '"') else ""} \
      ~{if (plus) then "--plus" else ""} \
      ~{if (report_common) then "--report_common" else ""} \
      ~{if defined(mutation_all) then ("--mutation_all " +  '"' + mutation_all + '"') else ""} \
      ~{if defined(blast_bin) then ("--blast_bin " +  '"' + blast_bin + '"') else ""} \
      ~{if defined(write_output_outputfile) then ("--output " +  '"' + write_output_outputfile + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (g_pipe_org) then "--gpipe_org" else ""} \
      ~{if defined(parm) then ("--parm " +  '"' + parm + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""}
  >>>
  parameter_meta {
    update: "Update the AMRFinder database"
    protein: "Protein FASTA file to search"
    nucleotide: "Nucleotide FASTA file to search"
    gff: "GFF file for protein locations. Protein id should be in the attribute 'Name=<id>' (9th field) of the rows with type 'CDS' or 'gene' (3rd field)."
    p_gap: "Input files PROT_FASTA, NUC_FASTA and GFF_FILE are created by the NCBI PGAP"
    database: "Alternative directory with AMRFinder database. Default: $AMRFINDER_DB"
    ident_min: "Minimum identity for nucleotide hit (0..1). -1 means use a curated threshold if it exists and 0.9 otherwise\\nDefault: -1"
    coverage_min: "Minimum coverage of the reference protein (0..1)\\nDefault: 0.5"
    organism: "Taxonomy group. To see all possible taxonomy groups use the --list_organisms flag"
    list_organisms: "Print the list of all possible taxonomy groups for mutations identification and exit"
    translation_table: "NCBI genetic code for translated BLAST\\nDefault: 11"
    plus: "Add the plus genes to the report"
    report_common: "Report proteins common to a taxonomy group"
    mutation_all: "File to report all mutations"
    blast_bin: "Directory for BLAST. Deafult: $BLAST_BIN"
    write_output_outputfile: "Write output to OUTPUT_FILE instead of STDOUT"
    quiet: "Suppress messages to STDERR"
    g_pipe_org: "NCBI internal GPipe organism names"
    parm: "amr_report parameters for testing: -nosame -noblast -skip_hmm_check -bed"
    threads: "Max. number of threads\\nDefault: 4"
    debug: "Integrity checks"
    log: "Error log file, appended, opened on application start\\n"
  }
  output {
    File out_stdout = stdout()
    File out_write_output_outputfile = "${in_write_output_outputfile}"
  }
}