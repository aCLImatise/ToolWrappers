version 1.0

task HtProtocolFinderpl {
  command <<<
    ht_protocol_finder_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}