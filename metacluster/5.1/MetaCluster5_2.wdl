version 1.0

task MetaCluster52 {
  command <<<
    MetaCluster5_2
  >>>
  output {
    File out_stdout = stdout()
  }
}