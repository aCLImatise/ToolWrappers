version 1.0

task DeblurDereplicate {
  input {
    Int? min_size
    Int? log_level
    File? log_file
    Int five_critical
  }
  command <<<
    deblur dereplicate \
      ~{five_critical} \
      ~{if defined(min_size) then ("--min-size " +  '"' + min_size + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    min_size: "Discard sequences with an abundance value smaller\\nthan min-size  [default: 2]"
    log_level: "RANGE  Level of messages for log file(range 1-debug to"
    log_file: "log file name  [default: deblur.log]"
    five_critical: "[default: 2]"
  }
  output {
    File out_stdout = stdout()
  }
}