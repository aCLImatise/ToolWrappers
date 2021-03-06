version 1.0

task EslmixdchletScore {
  input {
    Boolean? options
    String mix_dch_let_file
  }
  command <<<
    esl_mixdchlet score \
      ~{mix_dch_let_file} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    options: ""
    mix_dch_let_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}