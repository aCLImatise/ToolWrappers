version 1.0

task Samtools {
  command <<<
    samtools
  >>>
  output {
    File out_stdout = stdout()
  }
}