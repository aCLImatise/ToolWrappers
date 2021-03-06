version 1.0

task MbfiltersitesGffFile {
  input {
    String? padding_bp
    String mb_filter_sites
  }
  command <<<
    mb_filter_sites gff_file \
      ~{mb_filter_sites} \
      ~{if defined(padding_bp) then ("--padding_bp " +  '"' + padding_bp + '"') else ""}
  >>>
  parameter_meta {
    padding_bp: ""
    mb_filter_sites: ""
  }
  output {
    File out_stdout = stdout()
  }
}