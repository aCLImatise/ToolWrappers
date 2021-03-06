version 1.0

task UmisMbFilter {
  input {
    Int? cores
    String fast_q
  }
  command <<<
    umis mb_filter \
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