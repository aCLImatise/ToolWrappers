version 1.0

task Blat2nucmer {
  command <<<
    blat2nucmer
  >>>
  output {
    File out_stdout = stdout()
  }
}