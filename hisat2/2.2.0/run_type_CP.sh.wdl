version 1.0

task RunTypeCPsh {
  command <<<
    run_type_CP_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}