version 1.0

task MegahitCoreReadstat {
  input {
    String cat
  }
  command <<<
    megahit_core readstat \
      ~{cat}
  >>>
  parameter_meta {
    cat: ""
  }
  output {
    File out_stdout = stdout()
  }
}