version 1.0

task Vcfnobiallelicsnps {
  command <<<
    vcfnobiallelicsnps
  >>>
  output {
    File out_stdout = stdout()
  }
}