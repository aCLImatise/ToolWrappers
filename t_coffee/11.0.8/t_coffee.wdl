version 1.0

task TCoffee {
  command <<<
    t_coffee
  >>>
  output {
    File out_stdout = stdout()
  }
}