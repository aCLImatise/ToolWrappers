version 1.0

task GraphicsMagickconfig {
  input {
    Boolean? prefix
    Boolean? libs
    Boolean? ldflags
    Boolean? exec_prefix
    Boolean? cppflags
    Boolean? cflags
  }
  command <<<
    GraphicsMagick_config \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (libs) then "--libs" else ""} \
      ~{if (ldflags) then "--ldflags" else ""} \
      ~{if (exec_prefix) then "--exec-prefix" else ""} \
      ~{if (cppflags) then "--cppflags" else ""} \
      ~{if (cflags) then "--cflags" else ""}
  >>>
  parameter_meta {
    prefix: ""
    libs: ""
    ldflags: ""
    exec_prefix: ""
    cppflags: ""
    cflags: ""
  }
  output {
    File out_stdout = stdout()
  }
}