version 1.0

task ArbTreegen {
  command <<<
    arb_treegen
  >>>
  output {
    File out_stdout = stdout()
  }
}