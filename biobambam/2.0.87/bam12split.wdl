version 1.0

task Bam12split {
  command <<<
    bam12split
  >>>
  output {
    File out_stdout = stdout()
  }
}