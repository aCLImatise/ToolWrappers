version 1.0

task ConvertHeaderspyConvertpass {
  input {
    String convert_headers_do_tpy
  }
  command <<<
    ConvertHeaders_py convert_pass \
      ~{convert_headers_do_tpy}
  >>>
  parameter_meta {
    convert_headers_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}