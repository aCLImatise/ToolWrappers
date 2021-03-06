version 1.0

task SeqmagickHelp {
  input {
    String action
  }
  command <<<
    seqmagick help \
      ~{action}
  >>>
  parameter_meta {
    action: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}