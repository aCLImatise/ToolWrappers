version 1.0

task Cavalidate {
  command <<<
    cavalidate
  >>>
  output {
    File out_stdout = stdout()
  }
}