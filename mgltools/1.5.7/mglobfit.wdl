version 1.0

task Mglobfit {
  command <<<
    mglobfit
  >>>
  output {
    File out_stdout = stdout()
  }
}