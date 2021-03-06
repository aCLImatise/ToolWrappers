version 1.0

task Rdfs2dot {
  input {
    String? parser_use_given
  }
  command <<<
    rdfs2dot \
      ~{if defined(parser_use_given) then ("-f " +  '"' + parser_use_given + '"') else ""}
  >>>
  parameter_meta {
    parser_use_given: "parser to use, if not given,"
  }
  output {
    File out_stdout = stdout()
  }
}