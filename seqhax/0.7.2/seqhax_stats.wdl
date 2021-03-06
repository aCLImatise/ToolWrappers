version 1.0

task SeqhaxStats {
  input {
    Int? number_parallel_jobs
    File file
    Int number
    String of
    String parallel
    String jobs
  }
  command <<<
    seqhax stats \
      ~{file} \
      ~{number} \
      ~{of} \
      ~{parallel} \
      ~{jobs} \
      ~{if defined(number_parallel_jobs) then ("-t " +  '"' + number_parallel_jobs + '"') else ""}
  >>>
  parameter_meta {
    number_parallel_jobs: "Number of parallel jobs [1]"
    file: ""
    number: ""
    of: ""
    parallel: ""
    jobs: ""
  }
  output {
    File out_stdout = stdout()
  }
}