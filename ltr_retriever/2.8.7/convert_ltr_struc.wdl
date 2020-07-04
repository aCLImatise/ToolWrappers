version 1.0

task ConvertLtrStruc.pl {
  input {
    String log_dot_txt
    String output_path_slash
  }
  command <<<
    convert_ltr_struc.pl \
      ~{log_dot_txt} \
      ~{output_path_slash}
  >>>
  parameter_meta {
    log_dot_txt: "The log file generated by LTR_STRUC"
    output_path_slash: "The path that contains all individual report files"
  }
}