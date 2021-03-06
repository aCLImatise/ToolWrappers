version 1.0

task FpaKeepFLAGS {
  input {
    String? var_input
    String fpa
  }
  command <<<
    fpa keep FLAGS \
      ~{fpa} \
      ~{if defined(var_input) then ("--input " +  '"' + var_input + '"') else ""}
  >>>
  parameter_meta {
    var_input: ""
    fpa: ""
  }
  output {
    File out_stdout = stdout()
  }
}