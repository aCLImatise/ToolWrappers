version 1.0

task PizzlyGetFragmentLengthpybak {
  command <<<
    pizzly_get_fragment_length_py_bak
  >>>
  output {
    File out_stdout = stdout()
  }
}