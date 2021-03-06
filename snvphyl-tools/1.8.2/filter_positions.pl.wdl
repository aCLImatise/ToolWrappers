version 1.0

task Filterpositionspl {
  input {
    Boolean? input_file_snvalignpositionstsv
    Boolean? bad_positions
    File? output_base_file
  }
  command <<<
    filter_positions_pl \
      ~{if (input_file_snvalignpositionstsv) then "--input" else ""} \
      ~{if (bad_positions) then "--bad-positions" else ""} \
      ~{if (output_base_file) then "--output" else ""}
  >>>
  parameter_meta {
    input_file_snvalignpositionstsv: ":  Input file (snv_align-positions.tsv generated by snv pipeline)"
    bad_positions: ": Positions file to filter, in BED or GFF format"
    output_base_file: ":  Output base file name"
  }
  output {
    File out_stdout = stdout()
    File out_output_base_file = "${in_output_base_file}"
  }
}