version 1.0

task Monovar {
  command <<<
    monovar
  >>>
  output {
    File out_stdout = stdout()
  }
}