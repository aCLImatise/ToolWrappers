version 1.0

task Pbbamify {
  input {
    Boolean? file_aligned_nonpacbio
    Boolean? file_path_output
    Boolean? verbose_level
    Boolean? log_level
    Boolean? log_file
    String ref_dot_fa
    String in_dot_bam
  }
  command <<<
    pbbamify \
      ~{ref_dot_fa} \
      ~{in_dot_bam} \
      ~{true="--input" false="" file_aligned_nonpacbio} \
      ~{true="--output" false="" file_path_output} \
      ~{true="--verbose-level" false="" verbose_level} \
      ~{true="--log-level" false="" log_level} \
      ~{true="--log-file" false="" log_file}
  >>>
  parameter_meta {
    file_aligned_nonpacbio: "FILE  The aligned non-PacBio BAM file. If not provided, stdin will be used as input."
    file_path_output: "FILE  Path to the output BAM file. If not specified, output will be to the stdout."
    verbose_level: "INT   Specifies the level of info which will be output produced on stderr. 0 turns all output off, 1 outputs only warnings, while levels 2 and above outputs a status message every 1000000 (2), 100000 (3), 1000 (4), 100 (5), 10 (6) and 1 (7) reads. [3]"
    log_level: "STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [INFO]"
    log_file: "FILE  Log to a file, instead of stderr."
    ref_dot_fa: "FILE  Reference used to align the input."
    in_dot_bam: "FILE  Input file(s). Maybe one of: DataSetXML, BAM file(s), or FOFN"
  }
}