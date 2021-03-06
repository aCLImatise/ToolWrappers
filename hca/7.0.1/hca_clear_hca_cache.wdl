version 1.0

task HcaClearhcacache {
  input {
    String? log_level
    String hca
  }
  command <<<
    hca clear_hca_cache \
      ~{hca} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""}
  >>>
  parameter_meta {
    log_level: ""
    hca: ""
  }
  output {
    File out_stdout = stdout()
  }
}