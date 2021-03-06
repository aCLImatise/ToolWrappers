version 1.0

task GffCheck {
  input {
    String gff
  }
  command <<<
    gff_check \
      ~{gff}
  >>>
  parameter_meta {
    gff: ""
  }
  output {
    File out_stdout = stdout()
  }
}