version 1.0

task PreAlignment {
  command <<<
    Pre_Alignment
  >>>
  output {
    File out_stdout = stdout()
  }
}