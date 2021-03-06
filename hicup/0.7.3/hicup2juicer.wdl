version 1.0

task Hicup2juicer {
  input {
    File? zip
  }
  command <<<
    hicup2juicer \
      ~{if (zip) then "--zip" else ""}
  >>>
  parameter_meta {
    zip: "Write output to a gzip file"
  }
  output {
    File out_stdout = stdout()
    File out_zip = "${in_zip}"
  }
}