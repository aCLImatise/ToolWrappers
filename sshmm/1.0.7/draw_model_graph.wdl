version 1.0

task DrawModelGraph {
  command <<<
    draw_model_graph
  >>>
  output {
    File out_stdout = stdout()
  }
}