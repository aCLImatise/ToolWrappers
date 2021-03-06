version 1.0

task LynerSeed {
  input {
    String seed
  }
  command <<<
    lyner seed \
      ~{seed}
  >>>
  parameter_meta {
    seed: ""
  }
  output {
    File out_stdout = stdout()
  }
}