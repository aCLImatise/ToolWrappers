version 1.0

task Ps2ps2 {
  command <<<
    ps2ps2
  >>>
  output {
    File out_stdout = stdout()
  }
}