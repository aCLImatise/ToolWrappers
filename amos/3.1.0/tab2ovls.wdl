version 1.0

task Tab2ovls {
  command <<<
    tab2ovls
  >>>
  output {
    File out_stdout = stdout()
  }
}