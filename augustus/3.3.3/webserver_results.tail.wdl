version 1.0

task Webserverresultstail {
  command <<<
    webserver_results_tail
  >>>
  output {
    File out_stdout = stdout()
  }
}