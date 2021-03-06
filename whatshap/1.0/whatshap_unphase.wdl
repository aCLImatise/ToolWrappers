version 1.0

task WhatshapUnphase {
  input {
    String vcf
  }
  command <<<
    whatshap unphase \
      ~{vcf}
  >>>
  parameter_meta {
    vcf: "VCF file. Use \\\"-\\\" to read from standard input"
  }
  output {
    File out_stdout = stdout()
  }
}