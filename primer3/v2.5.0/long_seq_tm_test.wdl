version 1.0

task LongSeqTmTest {
  command <<<
    long_seq_tm_test
  >>>
  output {
    File out_stdout = stdout()
  }
}