version 1.0

task GcloudSqlTiers {
  input {
    String? optional
    String? flags
    String var_command
  }
  command <<<
    gcloud sql tiers \
      ~{optional} \
      ~{flags} \
      ~{var_command}
  >>>
  parameter_meta {
    optional: ""
    flags: ""
    var_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}