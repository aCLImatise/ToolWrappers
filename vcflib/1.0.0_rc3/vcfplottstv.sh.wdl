version 1.0

task Vcfplottstvsh {
  input {
    Boolean? g
    String? n
    Int vcf_two_tsv
    String? vcf
    File? file
  }
  command <<<
    vcfplottstv_sh \
      ~{vcf_two_tsv} \
      ~{vcf} \
      ~{file} \
      ~{if (g) then "-g" else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""}
  >>>
  parameter_meta {
    g: ""
    n: ""
    vcf_two_tsv: ""
    vcf: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}