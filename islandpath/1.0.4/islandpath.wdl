version 1.0

task Islandpath {
  command <<<
    islandpath
  >>>
  output {
    File out_stdout = stdout()
  }
}