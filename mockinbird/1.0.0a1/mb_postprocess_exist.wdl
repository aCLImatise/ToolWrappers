version 1.0

task MbpostprocessExist {
  input {
    String? prefix
    String mock_in_bird_post_process
  }
  command <<<
    mb_postprocess exist \
      ~{mock_in_bird_post_process} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""}
  >>>
  parameter_meta {
    prefix: ""
    mock_in_bird_post_process: ""
  }
  output {
    File out_stdout = stdout()
  }
}