version 1.0

task HiLineBadreads {
  input {
    Boolean? sort
    String var_output
  }
  command <<<
    HiLine bad_reads \
      ~{var_output} \
      ~{if (sort) then "--sort" else ""}
  >>>
  parameter_meta {
    sort: "/ --no-sort  Sort and index output. Default=sort"
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}