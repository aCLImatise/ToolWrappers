version 1.0

task Arachne2ctg {
  command <<<
    arachne2ctg
  >>>
  output {
    File out_stdout = stdout()
  }
}