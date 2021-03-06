version 1.0

task Vcfaddinfo {
  input {
    File vcf_file
  }
  command <<<
    vcfaddinfo \
      ~{vcf_file}
  >>>
  parameter_meta {
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}