version 1.0

task SrfIndexHash {
  input {
    Boolean? check_existing_index
    String srf_file
  }
  command <<<
    srf_index_hash \
      ~{srf_file} \
      ~{if (check_existing_index) then "-c" else ""}
  >>>
  parameter_meta {
    check_existing_index: "check an existing index, don't re-index"
    srf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}