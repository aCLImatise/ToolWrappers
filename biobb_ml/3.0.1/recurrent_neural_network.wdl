version 1.0

task RecurrentNeuralNetwork {
  command <<<
    recurrent_neural_network
  >>>
  output {
    File out_stdout = stdout()
  }
}