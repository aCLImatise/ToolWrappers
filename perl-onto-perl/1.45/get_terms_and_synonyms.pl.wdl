version 1.0

task GetTermsAndSynonymspl {
  input {
    Boolean? obo_input_file
    String usage
    String options
  }
  command <<<
    get_terms_and_synonyms_pl \
      ~{usage} \
      ~{options} \
      ~{if (obo_input_file) then "-f" else ""}
  >>>
  parameter_meta {
    obo_input_file: "OBO input file"
    usage: ": get_terms_and_synonyms.pl [options]"
    options: ":"
  }
  output {
    File out_stdout = stdout()
  }
}