version 1.0

task Resample {
  command <<<
    resample
  >>>
  output {
    File out_stdout = stdout()
  }
}