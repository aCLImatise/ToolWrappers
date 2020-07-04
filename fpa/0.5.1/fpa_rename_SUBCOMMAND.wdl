version 1.0

task FpaRenameSUBCOMMAND {
  input {
    String? var_input
    String? var_output
    String fpa
  }
  command <<<
    fpa rename SUBCOMMAND \
      ~{fpa} \
      ~{if defined(var_input) then ("--input " +  '"' + var_input + '"') else ""} \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""}
  >>>
  parameter_meta {
    var_input: ""
    var_output: ""
    fpa: ""
  }
}