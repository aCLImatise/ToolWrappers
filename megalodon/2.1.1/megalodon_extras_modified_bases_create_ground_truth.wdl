version 1.0

task MegalodonExtrasModifiedBasesCreateGroundTruth {
  input {
    Boolean? var_0
    Int? coverage_threshold
    Float? pct_mod_thresholds
    File? out_csv
    String var_4
    String ground_truth_modifications_dot_csv
  }
  command <<<
    megalodon_extras modified_bases create_ground_truth \
      ~{var_4} \
      ~{ground_truth_modifications_dot_csv} \
      ~{if (var_0) then "--bed-methyl-files" else ""} \
      ~{if defined(coverage_threshold) then ("--coverage-threshold " +  '"' + coverage_threshold + '"') else ""} \
      ~{if defined(pct_mod_thresholds) then ("--pct-mod-thresholds " +  '"' + pct_mod_thresholds + '"') else ""} \
      ~{if defined(out_csv) then ("--out-csv " +  '"' + out_csv + '"') else ""}
  >>>
  parameter_meta {
    var_0: ""
    coverage_threshold: "Only include sites with sufficient coverage. Default:\\n1 (= All sites)"
    pct_mod_thresholds: "PCT_MOD_THRESHOLDS\\nLower and upper percent modified thresholds for ground\\ntruth modified positions. Default: [10.0, 90.0]"
    out_csv: "Output filename for ground truth calls. Default:"
    var_4: "[BED_METHYL_FILES ...]"
    ground_truth_modifications_dot_csv: "--strand-offset STRAND_OFFSET"
  }
  output {
    File out_stdout = stdout()
    File out_out_csv = "${in_out_csv}"
  }
}