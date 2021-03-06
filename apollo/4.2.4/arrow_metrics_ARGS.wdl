version 1.0

task ArrowMetricsARGS {
  input {
    String arrow
    String metrics
    String var_command
    String? args
  }
  command <<<
    arrow metrics ARGS \
      ~{arrow} \
      ~{metrics} \
      ~{var_command} \
      ~{args}
  >>>
  parameter_meta {
    arrow: ""
    metrics: ""
    var_command: ""
    args: ""
  }
  output {
    File out_stdout = stdout()
  }
}