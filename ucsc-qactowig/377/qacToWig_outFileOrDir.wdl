version 1.0

task QacToWigOutFileOrDir {
  input {
    String? not_valid_option
  }
  command <<<
    qacToWig outFileOrDir \
      ~{if defined(not_valid_option) then ("-h " +  '"' + not_valid_option + '"') else ""}
  >>>
  parameter_meta {
    not_valid_option: "not a valid option"
  }
  output {
    File out_stdout = stdout()
  }
}