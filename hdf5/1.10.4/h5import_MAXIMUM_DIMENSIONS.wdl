version 1.0

task H5importMAXIMUMDIMENSIONS {
  input {
    Int h_five_import
    String? elp
  }
  command <<<
    h5import MAXIMUM_DIMENSIONS \
      ~{h_five_import} \
      ~{elp}
  >>>
  parameter_meta {
    h_five_import: ""
    elp: ""
  }
  output {
    File out_stdout = stdout()
  }
}