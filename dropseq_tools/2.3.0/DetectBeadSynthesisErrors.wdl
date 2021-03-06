version 1.0

task DetectBeadSynthesisErrors {
  input {
    Int? default_g
    String? final_command_line
    Boolean? displays_options_specific
    Boolean? std_help
    Boolean? displays_options_and
    String barcode_dot
    String bases_dot
    String errors_dot
  }
  command <<<
    DetectBeadSynthesisErrors \
      ~{barcode_dot} \
      ~{bases_dot} \
      ~{errors_dot} \
      ~{if defined(default_g) then ("-m " +  '"' + default_g + '"') else ""} \
      ~{if defined(final_command_line) then ("-v " +  '"' + final_command_line + '"') else ""} \
      ~{if (displays_options_specific) then "-h" else ""} \
      ~{if (std_help) then "--stdhelp" else ""} \
      ~{if (displays_options_and) then "-H" else ""}
  >>>
  parameter_meta {
    default_g: "(default 4g)"
    final_command_line: "final command line before executing"
    displays_options_specific: "Displays options specific to this tool."
    std_help: ""
    displays_options_and: "Displays options specific to this tool AND options common to all Picard command line\\ntools."
    barcode_dot: "The data has multiple columns: the cell barcode, the number of UMIs, then one"
    bases_dot: "Bases are ordered A,C,G,T for these columns.  An example output with a single base"
    errors_dot: "This is typically the last base of the UMI.  If set to null, program will use the"
  }
  output {
    File out_stdout = stdout()
  }
}