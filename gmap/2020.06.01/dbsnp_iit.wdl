version 1.0

task DbsnpIit {
  input {
    Boolean? more_options
    Boolean? options
    Int allele_freq_sum_not_one
    String flank_mismatch_genome_equal
    String flank_mismatch_genome_shorter
    String mixed_observed
    String named_deletion_zero_span
    String non_integer_chrom_count
    String observed_mismatch
    String observed_wrong_format
    String ref_allele_rev_comp
    String single_class_longer_span
    String single_class_tri_allelic
  }
  command <<<
    dbsnp_iit \
      ~{allele_freq_sum_not_one} \
      ~{flank_mismatch_genome_equal} \
      ~{flank_mismatch_genome_shorter} \
      ~{mixed_observed} \
      ~{named_deletion_zero_span} \
      ~{non_integer_chrom_count} \
      ~{observed_mismatch} \
      ~{observed_wrong_format} \
      ~{ref_allele_rev_comp} \
      ~{single_class_longer_span} \
      ~{single_class_tri_allelic} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  parameter_meta {
    more_options: ""
    options: ""
    allele_freq_sum_not_one: "DuplicateObserved"
    flank_mismatch_genome_equal: "FlankMismatchGenomeLonger"
    flank_mismatch_genome_shorter: "InconsistentAlleles"
    mixed_observed: "MultipleAlignments"
    named_deletion_zero_span: "NamedInsertionNonzeroSpan"
    non_integer_chrom_count: "ObservedContainsIupac"
    observed_mismatch: "ObservedTooLong"
    observed_wrong_format: "RefAlleleMismatch"
    ref_allele_rev_comp: "SingleAlleleFreq"
    single_class_longer_span: "SingleClassQuadAllelic"
    single_class_tri_allelic: "SingleClassZeroSpan"
  }
  output {
    File out_stdout = stdout()
  }
}