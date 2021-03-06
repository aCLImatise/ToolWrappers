version 1.0

task AribaPreparerefTbOutdir {
  input {
    String ariba
    String var_command
    String options
  }
  command <<<
    ariba prepareref_tb outdir \
      ~{ariba} \
      ~{var_command} \
      ~{options}
  >>>
  parameter_meta {
    ariba: ""
    var_command: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}