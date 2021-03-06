version 1.0

task CmconvertCmfile {
  input {
    Boolean? options
  }
  command <<<
    cmconvert cmfile \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}