version 1.0

task Ega2 {
  command <<<
    ega2
  >>>
  output {
    File out_stdout = stdout()
  }
}