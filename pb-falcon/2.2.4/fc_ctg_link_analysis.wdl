version 1.0

task FcCtgLinkAnalysis {
  command <<<
    fc_ctg_link_analysis
  >>>
  output {
    File out_stdout = stdout()
  }
}