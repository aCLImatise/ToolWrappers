version 1.0

task SvtoolsVcfsort {
  input {
    Boolean? support
    String svtools
  }
  command <<<
    svtools vcfsort \
      ~{svtools} \
      ~{if (support) then "--support" else ""}
  >>>
  parameter_meta {
    support: ""
    svtools: ""
  }
  output {
    File out_stdout = stdout()
  }
}