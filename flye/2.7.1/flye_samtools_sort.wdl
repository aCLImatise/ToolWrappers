version 1.0

task FlyesamtoolsSort {
  input {
    Int? set_compression_level
    Int? set_maximum_memory
    Boolean? sort_read_name
    String? sort_value_tag
    File? write_final_output
    String? write_temporary_files
    File? input_fmt_option
    String? output_fmt
    File? output_fmt_option
    File? reference
    Int? threads
    String sam_tools
    String sort
    String? options_dot_dot_dot
    String? in_dot_bam
  }
  command <<<
    flye_samtools sort \
      ~{sam_tools} \
      ~{sort} \
      ~{options_dot_dot_dot} \
      ~{in_dot_bam} \
      ~{if defined(set_compression_level) then ("-l " +  '"' + set_compression_level + '"') else ""} \
      ~{if defined(set_maximum_memory) then ("-m " +  '"' + set_maximum_memory + '"') else ""} \
      ~{if (sort_read_name) then "-n" else ""} \
      ~{if defined(sort_value_tag) then ("-t " +  '"' + sort_value_tag + '"') else ""} \
      ~{if defined(write_final_output) then ("-o " +  '"' + write_final_output + '"') else ""} \
      ~{if defined(write_temporary_files) then ("-T " +  '"' + write_temporary_files + '"') else ""} \
      ~{if defined(input_fmt_option) then ("--input-fmt-option " +  '"' + input_fmt_option + '"') else ""} \
      ~{if defined(output_fmt) then ("--output-fmt " +  '"' + output_fmt + '"') else ""} \
      ~{if defined(output_fmt_option) then ("--output-fmt-option " +  '"' + output_fmt_option + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    set_compression_level: "Set compression level, from 0 (uncompressed) to 9 (best)"
    set_maximum_memory: "Set maximum memory per thread; suffix K/M/G recognized [768M]"
    sort_read_name: "Sort by read name"
    sort_value_tag: "Sort by value of TAG. Uses position as secondary index (or read name if -n is set)"
    write_final_output: "Write final output to FILE rather than standard output"
    write_temporary_files: "Write temporary files to PREFIX.nnnn.bam"
    input_fmt_option: "[=VAL]\\nSpecify a single input file format option in the form\\nof OPTION or OPTION=VALUE"
    output_fmt: "[,OPT[=VAL]]...\\nSpecify output format (SAM, BAM, CRAM)"
    output_fmt_option: "[=VAL]\\nSpecify a single output file format option in the form\\nof OPTION or OPTION=VALUE"
    reference: "Reference sequence FASTA FILE [null]"
    threads: "Number of additional threads to use [0]\\n"
    sam_tools: ""
    sort: ""
    options_dot_dot_dot: ""
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_write_final_output = "${in_write_final_output}"
    File out_output_fmt_option = "${in_output_fmt_option}"
  }
}