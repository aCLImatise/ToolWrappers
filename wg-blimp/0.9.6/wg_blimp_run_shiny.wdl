version 1.0

task WgblimpRunshiny {
  input {
    String? host
    Int? port
    String config_files_dot_dot_dot
  }
  command <<<
    wg_blimp run_shiny \
      ~{config_files_dot_dot_dot} \
      ~{if defined(host) then ("--host " +  '"' + host + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""}
  >>>
  parameter_meta {
    host: "Host ip for shiny to listen on."
    port: "Shiny port number."
    config_files_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}