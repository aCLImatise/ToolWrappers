version 1.0

task DeblurTrim {
  input {
    Int? trim_length
    Int? log_level
    File? log_file
    Int five_critical
  }
  command <<<
    deblur trim \
      ~{five_critical} \
      ~{if defined(trim_length) then ("--trim-length " +  '"' + trim_length + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    trim_length: "Sequence trim length  [required]"
    log_level: "RANGE  Level of messages for log file(range 1-debug to"
    log_file: "log file name  [default: deblur.log]"
    five_critical: "[default: 2]"
  }
  output {
    File out_stdout = stdout()
  }
}