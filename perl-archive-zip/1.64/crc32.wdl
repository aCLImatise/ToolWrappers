version 1.0

task Crc32 {
  command <<<
    crc32
  >>>
  output {
    File out_stdout = stdout()
  }
}