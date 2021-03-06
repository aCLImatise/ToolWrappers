version 1.0

task IvarTrim {
  input {
    Boolean? required_sorted_bam
    Boolean? bed_file_primer
    Boolean? minimum_length_read
    Boolean? minimum_quality_threshold
    Boolean? width_sliding_default
    Boolean? include_reads_primers
    File? required_prefix_output
  }
  command <<<
    ivar trim \
      ~{if (required_sorted_bam) then "-i" else ""} \
      ~{if (bed_file_primer) then "-b" else ""} \
      ~{if (minimum_length_read) then "-m" else ""} \
      ~{if (minimum_quality_threshold) then "-q" else ""} \
      ~{if (width_sliding_default) then "-s" else ""} \
      ~{if (include_reads_primers) then "-e" else ""} \
      ~{if (required_prefix_output) then "-p" else ""}
  >>>
  parameter_meta {
    required_sorted_bam: "(Required) Sorted bam file, with aligned reads, to trim primers and quality"
    bed_file_primer: "BED file with primer sequences and positions. If no BED file is specified, only quality trimming will be done."
    minimum_length_read: "Minimum length of read to retain after trimming (Default: 30)"
    minimum_quality_threshold: "Minimum quality threshold for sliding window to pass (Default: 20)"
    width_sliding_default: "Width of sliding window (Default: 4)"
    include_reads_primers: "Include reads with no primers. By default, reads with no primers are excluded"
    required_prefix_output: "(Required) Prefix for the output BAM file"
  }
  output {
    File out_stdout = stdout()
    File out_required_prefix_output = "${in_required_prefix_output}"
  }
}