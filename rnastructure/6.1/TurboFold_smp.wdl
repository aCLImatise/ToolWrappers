version 1.0

task TurboFoldsmp {
  input {
    String sequence_dot
    String to_dot
  }
  command <<<
    TurboFold_smp \
      ~{sequence_dot} \
      ~{to_dot}
  >>>
  parameter_meta {
    sequence_dot: "Default is no limit."
    to_dot: "SHAPEintercept"
  }
  output {
    File out_stdout = stdout()
  }
}