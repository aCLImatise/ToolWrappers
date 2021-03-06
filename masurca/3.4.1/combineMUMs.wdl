version 1.0

task CombineMUMs {
  input {
    Boolean? only_output_stdout
    Boolean? allow_matches_only
    Int? break_matches_nonacgts
    String? used_label_query_match
    String? used_label_reference_match
    Boolean? output_differences_strings
    Boolean? label_query_matches
    Int? set_verbose_level
    File? reset_filename_witherrorsgaps
    Boolean? do_output_files
    Boolean? set_errorrate_cutoff
    String ref_sequence
    String match_sequences
    String gaps_file
  }
  command <<<
    combineMUMs \
      ~{ref_sequence} \
      ~{match_sequences} \
      ~{gaps_file} \
      ~{if (only_output_stdout) then "-D" else ""} \
      ~{if (allow_matches_only) then "-n" else ""} \
      ~{if defined(break_matches_nonacgts) then ("-N " +  '"' + break_matches_nonacgts + '"') else ""} \
      ~{if defined(used_label_query_match) then ("-q " +  '"' + used_label_query_match + '"') else ""} \
      ~{if defined(used_label_reference_match) then ("-r " +  '"' + used_label_reference_match + '"') else ""} \
      ~{if (output_differences_strings) then "-S" else ""} \
      ~{if (label_query_matches) then "-t" else ""} \
      ~{if defined(set_verbose_level) then ("-v " +  '"' + set_verbose_level + '"') else ""} \
      ~{if defined(reset_filename_witherrorsgaps) then ("-W " +  '"' + reset_filename_witherrorsgaps + '"') else ""} \
      ~{if (do_output_files) then "-x" else ""} \
      ~{if (set_errorrate_cutoff) then "-e" else ""}
  >>>
  parameter_meta {
    only_output_stdout: "Only output to stdout the difference positions\\nand characters"
    allow_matches_only: "Allow matches only between nucleotides, i.e., ACGTs"
    break_matches_nonacgts: "Break matches at <num> or more consecutive non-ACGTs"
    used_label_query_match: "Used to label query match"
    used_label_reference_match: "Used to label reference match"
    output_differences_strings: "Output all differences in strings"
    label_query_matches: "Label query matches with query fasta header"
    set_verbose_level: "Set verbose level for extra output"
    reset_filename_witherrorsgaps: "Reset the default output filename witherrors.gaps"
    do_output_files: "Don't output .cover files"
    set_errorrate_cutoff: "Set error-rate cutoff to e (e.g. 0.02 is two percent)"
    ref_sequence: ""
    match_sequences: ""
    gaps_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_reset_filename_witherrorsgaps = "${in_reset_filename_witherrorsgaps}"
  }
}