version 1.0

task GetTermIdVsTermDefpl {
  input {
    Boolean? obo_input_file
    String usage
    String options
  }
  command <<<
    get_term_id_vs_term_def_pl \
      ~{usage} \
      ~{options} \
      ~{if (obo_input_file) then "-f" else ""}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
    usage: ": get_term_id_vs_term_def.pl [options]"
    options: ":"
  }
  output {
    File out_stdout = stdout()
  }
}