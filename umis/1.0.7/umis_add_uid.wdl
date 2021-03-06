version 1.0

task UmisAddUid {
  input {
    Int? cores
    String fast_q
  }
  command <<<
    umis add_uid \
      ~{fast_q} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  parameter_meta {
    cores: ""
    fast_q: ""
  }
  output {
    File out_stdout = stdout()
  }
}