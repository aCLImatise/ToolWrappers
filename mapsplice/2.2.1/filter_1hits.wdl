version 1.0

task Filter1hits {
  command <<<
    filter_1hits
  >>>
  output {
    File out_stdout = stdout()
  }
}