version 1.0

task SamtoolsFixmate {
  input {
    Boolean? remove_unmapped_reads
    Boolean? disable_fr_proper
    Boolean? add_template_cigar
    Boolean? add_mate_score
    Boolean? no_pg
    File? input_fmt_option
    String? output_fmt
    File? output_fmt_option
    File? reference
    Int? threads
    Int? verbosity
    String in_dot_names_rt_dot_bam
    String out_dot_names_rt_dot_bam
  }
  command <<<
    samtools fixmate \
      ~{in_dot_names_rt_dot_bam} \
      ~{out_dot_names_rt_dot_bam} \
      ~{if (remove_unmapped_reads) then "-r" else ""} \
      ~{if (disable_fr_proper) then "-p" else ""} \
      ~{if (add_template_cigar) then "-c" else ""} \
      ~{if (add_mate_score) then "-m" else ""} \
      ~{if (no_pg) then "--no-PG" else ""} \
      ~{if defined(input_fmt_option) then ("--input-fmt-option " +  '"' + input_fmt_option + '"') else ""} \
      ~{if defined(output_fmt) then ("--output-fmt " +  '"' + output_fmt + '"') else ""} \
      ~{if defined(output_fmt_option) then ("--output-fmt-option " +  '"' + output_fmt_option + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    remove_unmapped_reads: "Remove unmapped reads and secondary alignments"
    disable_fr_proper: "Disable FR proper pair check"
    add_template_cigar: "Add template cigar ct tag"
    add_mate_score: "Add mate score tag"
    no_pg: "do not add a PG line"
    input_fmt_option: "[=VAL]\\nSpecify a single input file format option in the form\\nof OPTION or OPTION=VALUE"
    output_fmt: "[,OPT[=VAL]]...\\nSpecify output format (SAM, BAM, CRAM)"
    output_fmt_option: "[=VAL]\\nSpecify a single output file format option in the form\\nof OPTION or OPTION=VALUE"
    reference: "Reference sequence FASTA FILE [null]"
    threads: "Number of additional threads to use [0]"
    verbosity: "Set level of verbosity"
    in_dot_names_rt_dot_bam: ""
    out_dot_names_rt_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_fmt_option = "${in_output_fmt_option}"
  }
}