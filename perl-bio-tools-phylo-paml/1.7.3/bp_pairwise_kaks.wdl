version 1.0

task BpPairwiseKaks {
  command <<<
    bp_pairwise_kaks
  >>>
  output {
    File out_stdout = stdout()
  }
}