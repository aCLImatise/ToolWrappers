version 1.0

task Dxjobutilparselink {
  input {
    Boolean? no_project
    String dx_link
  }
  command <<<
    dx_jobutil_parse_link \
      ~{dx_link} \
      ~{if (no_project) then "--no-project" else ""}
  >>>
  parameter_meta {
    no_project: "Ignore project ID in an extended dxlink - just print the\\nobject ID\\n"
    dx_link: "Link to parse"
  }
  output {
    File out_stdout = stdout()
  }
}