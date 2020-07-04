version 1.0

task MbPreprocessParclipFastq {
  input {
    String? log_level
    String mock_in_bird_preprocess
  }
  command <<<
    mb-preprocess parclip_fastq \
      ~{mock_in_bird_preprocess} \
      ~{if defined(log_level) then ("--log_level " +  '"' + log_level + '"') else ""}
  >>>
  parameter_meta {
    log_level: ""
    mock_in_bird_preprocess: ""
  }
}