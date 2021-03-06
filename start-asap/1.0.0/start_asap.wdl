version 1.0

task Startasap {
  input {
    String subdirectory_dot
  }
  command <<<
    start_asap \
      ~{subdirectory_dot}
  >>>
  parameter_meta {
    subdirectory_dot: "*-ft*, *--for-tag* STRING"
  }
  output {
    File out_stdout = stdout()
  }
}