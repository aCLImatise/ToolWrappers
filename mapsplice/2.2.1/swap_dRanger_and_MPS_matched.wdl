version 1.0

task SwapDRangerAndMPSMatched {
  command <<<
    swap_dRanger_and_MPS_matched
  >>>
  output {
    File out_stdout = stdout()
  }
}