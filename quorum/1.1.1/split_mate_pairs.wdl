version 1.0

task SplitMatePairs {
  command <<<
    split_mate_pairs
  >>>
  output {
    File out_stdout = stdout()
  }
}