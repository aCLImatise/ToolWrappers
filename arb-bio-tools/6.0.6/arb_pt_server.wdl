version 1.0

task ArbPtServer {
  command <<<
    arb_pt_server
  >>>
  output {
    File out_stdout = stdout()
  }
}