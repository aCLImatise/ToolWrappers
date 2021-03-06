version 1.0

task Bft {
  input {
    String build
    String k
  }
  command <<<
    bft \
      ~{build} \
      ~{k}
  >>>
  parameter_meta {
    build: ""
    k: ""
  }
  output {
    File out_stdout = stdout()
  }
}