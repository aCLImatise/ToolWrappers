version 1.0

task IdbaUdo {
  command <<<
    idba_ud_o
  >>>
  output {
    File out_stdout = stdout()
  }
}