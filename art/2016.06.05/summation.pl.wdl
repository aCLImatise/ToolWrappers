version 1.0

task Summationpl {
  command <<<
    summation_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}