version 1.0

task SvtoolsFrequency {
  input {
    Boolean? support
    String svtools
  }
  command <<<
    svtools frequency \
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