version 1.0

task GetObsoleteTermIdVsNameInGopl {
  input {
    Boolean? obo_input_file
    String usage
    String options
  }
  command <<<
    get_obsolete_term_id_vs_name_in_go_pl \
      ~{usage} \
      ~{options} \
      ~{if (obo_input_file) then "-f" else ""}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
    usage: ": get_obsolete_term_id_vs_name_in_go.pl [options]"
    options: ":"
  }
  output {
    File out_stdout = stdout()
  }
}