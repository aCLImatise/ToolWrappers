version 1.0

task RAlphaDiversitypy {
  input {
    Boolean? debug
    String? var_exp
    Boolean? indices_alpha_diversity
    File? r_data
    File? html
    File? alpha_out
    File? log_file
  }
  command <<<
    r_alpha_diversity_py \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(var_exp) then ("--varExp " +  '"' + var_exp + '"') else ""} \
      ~{if (indices_alpha_diversity) then "-m" else ""} \
      ~{if defined(r_data) then ("--rdata " +  '"' + r_data + '"') else ""} \
      ~{if defined(html) then ("--html " +  '"' + html + '"') else ""} \
      ~{if defined(alpha_out) then ("--alpha-out " +  '"' + alpha_out + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""}
  >>>
  parameter_meta {
    debug: "Keep temporary files to debug program."
    var_exp: "The experiment variable used to aggregate sample\\ndiversities."
    indices_alpha_diversity: "[ALPHA_MEASURES [ALPHA_MEASURES ...]], --alpha-measures [ALPHA_MEASURES [ALPHA_MEASURES ...]]\\nThe indices of alpha diversity. Available indices :\\nObserved, Chao1, Shannon, InvSimpson, Simpson, ACE,\\nFisher. [Default: ['Observed', 'Chao1', 'Shannon',\\n'InvSimpson']]"
    r_data: "The path of RData file containing a phyloseq object-\\nthe result of FROGS Phyloseq Import Data"
    html: "The path to store resulting html file. [Default:\\nalpha_diversity.html]"
    alpha_out: "The path to store resulting data file containing alpha\\ndiversity table. [Default: alpha_diversity.tsv]"
    log_file: "This output file will contain several information on\\nexecuted commands.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_log_file = "${in_log_file}"
  }
}