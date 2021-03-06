version 1.0

task HcaDssLogin {
  input {
    String? access_token
    Boolean? remote
  }
  command <<<
    hca dss login \
      ~{if defined(access_token) then ("--access-token " +  '"' + access_token + '"') else ""} \
      ~{if (remote) then "--remote" else ""}
  >>>
  parameter_meta {
    access_token: ""
    remote: ""
  }
  output {
    File out_stdout = stdout()
  }
}