version 1.0

task GSvariniexample {
  command <<<
    GSvar_ini_example
  >>>
  output {
    File out_stdout = stdout()
  }
}