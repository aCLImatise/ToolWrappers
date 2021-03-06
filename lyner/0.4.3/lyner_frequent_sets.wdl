version 1.0

task LynerFrequentsets {
  input {
    Float? min_support
  }
  command <<<
    lyner frequent_sets \
      ~{if defined(min_support) then ("--min-support " +  '"' + min_support + '"') else ""}
  >>>
  parameter_meta {
    min_support: ""
  }
  output {
    File out_stdout = stdout()
  }
}