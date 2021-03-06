version 1.0

task Tpp {
  input {
    Boolean? protocol
    String? primer
    Int? max_reads
    Int? mismatches
    Boolean? flags
    Boolean? bwa_alg
    Int? primer_start_window
    Int? window_size
    File? bar_seq_catalog_out
    String? replicon_ids
    File? var_output
    File? reads_two
    File? reads_one
    File? ref
    File? bwa
    String? optional
    String? args
  }
  command <<<
    tpp \
      ~{optional} \
      ~{args} \
      ~{if (protocol) then "-protocol" else ""} \
      ~{if defined(primer) then ("-primer " +  '"' + primer + '"') else ""} \
      ~{if defined(max_reads) then ("-maxreads " +  '"' + max_reads + '"') else ""} \
      ~{if defined(mismatches) then ("-mismatches " +  '"' + mismatches + '"') else ""} \
      ~{if (flags) then "-flags" else ""} \
      ~{if (bwa_alg) then "-bwa-alg" else ""} \
      ~{if defined(primer_start_window) then ("-primer-start-window " +  '"' + primer_start_window + '"') else ""} \
      ~{if defined(window_size) then ("-window-size " +  '"' + window_size + '"') else ""} \
      ~{if defined(bar_seq_catalog_out) then ("-barseq_catalog_out " +  '"' + bar_seq_catalog_out + '"') else ""} \
      ~{if defined(replicon_ids) then ("-replicon-ids " +  '"' + replicon_ids + '"') else ""} \
      ~{if defined(var_output) then ("-output " +  '"' + var_output + '"') else ""} \
      ~{if defined(reads_two) then ("-reads2 " +  '"' + reads_two + '"') else ""} \
      ~{if defined(reads_one) then ("-reads1 " +  '"' + reads_one + '"') else ""} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{if defined(bwa) then ("-bwa " +  '"' + bwa + '"') else ""}
  >>>
  parameter_meta {
    protocol: "[Sassetti|Tn5|Mme1] # which sample prep protocol was used?; sassetti protocol is the default; this sets the default transposon and primer sequence"
    primer: "# prefix of reads corresponding to end of transposon at junction with genomic sequence; can override default seq"
    max_reads: ""
    mismatches: "# when searching for constant regions in reads 1 and 2; default is 1"
    flags: "\\\"<STRING>\\\"  # args to pass to BWA"
    bwa_alg: "[aln|mem]  # Default: mem. Algorithm to use for mapping reads with bwa"
    primer_start_window: ",INT # position in read to search for start of primer; default is [0,20]"
    window_size: "# automatic method to set window"
    bar_seq_catalog_out: ""
    replicon_ids: "# if multiple replicons/genomes/contigs/sequences were provided in -ref, give them names.\\n# Enter 'auto' for autogenerated ids.\\n"
    var_output: ""
    reads_two: ""
    reads_one: ""
    ref: ""
    bwa: ""
    optional: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}