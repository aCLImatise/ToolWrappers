version 1.0

task FcRun1 {
  command <<<
    fc_run1
  >>>
  output {
    File out_stdout = stdout()
  }
}