version 1.0

task DriveQr {
  input {
    String? address
    Boolean? id
    Boolean? verbose
  }
  command <<<
    drive qr \
      ~{if defined(address) then ("-address " +  '"' + address + '"') else ""} \
      ~{if (id) then "-id" else ""} \
      ~{if (verbose) then "-verbose" else ""}
  >>>
  parameter_meta {
    address: "address on which the QR code generator is running (default \\\"https://qr-server.herokuapp.com/drive\\\")"
    id: "share by id instead of path"
    verbose: "show step by step information verbosely (default true)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}