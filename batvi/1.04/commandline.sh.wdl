version 1.0

task Commandlinesh {
  command <<<
    commandline_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}