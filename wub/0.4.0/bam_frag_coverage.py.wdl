version 1.0

task BamFragCoveragepy {
  input {
    String? reference_fasta
    String? bam_region_none
    Int? length_intervals_
    Int? number_bins_none
    Boolean? plot_perreference_information
    Boolean? take_log_coverage
    String? dataset_tag_bam
    Int? minimum_alignment_quality
    Int? tab_separated_file_requires
    Int? tab_separated_file_global
    String? report_pdf_bamfragcoveragepdf
    File? save_pickled_results
    Boolean? quiet_show_bars
  }
  command <<<
    bam_frag_coverage_py \
      ~{if defined(reference_fasta) then ("-f " +  '"' + reference_fasta + '"') else ""} \
      ~{if defined(bam_region_none) then ("-c " +  '"' + bam_region_none + '"') else ""} \
      ~{if defined(length_intervals_) then ("-i " +  '"' + length_intervals_ + '"') else ""} \
      ~{if defined(number_bins_none) then ("-b " +  '"' + number_bins_none + '"') else ""} \
      ~{if (plot_perreference_information) then "-x" else ""} \
      ~{if (take_log_coverage) then "-o" else ""} \
      ~{if defined(dataset_tag_bam) then ("-t " +  '"' + dataset_tag_bam + '"') else ""} \
      ~{if defined(minimum_alignment_quality) then ("-q " +  '"' + minimum_alignment_quality + '"') else ""} \
      ~{if defined(tab_separated_file_requires) then ("-l " +  '"' + tab_separated_file_requires + '"') else ""} \
      ~{if defined(tab_separated_file_global) then ("-g " +  '"' + tab_separated_file_global + '"') else ""} \
      ~{if defined(report_pdf_bamfragcoveragepdf) then ("-r " +  '"' + report_pdf_bamfragcoveragepdf + '"') else ""} \
      ~{if defined(save_pickled_results) then ("-p " +  '"' + save_pickled_results + '"') else ""} \
      ~{if (quiet_show_bars) then "-Q" else ""}
  >>>
  parameter_meta {
    reference_fasta: "Reference fasta."
    bam_region_none: "BAM region (None)."
    length_intervals_: "Length intervals ()."
    number_bins_none: "Number of bins (None = auto)."
    plot_perreference_information: "Plot per-reference information."
    take_log_coverage: "Do not take log of coverage."
    dataset_tag_bam: "Dataset tag (BAM basename)."
    minimum_alignment_quality: "Minimum alignment quality (0)."
    tab_separated_file_requires: "Tab separated file with per-chromosome cov80 scores\\n(None). Requires the -x option to be specified."
    tab_separated_file_global: "Tab separated file with global cov80 score (None)."
    report_pdf_bamfragcoveragepdf: "Report PDF (bam_frag_coverage.pdf)."
    save_pickled_results: "Save pickled results in this file (None)."
    quiet_show_bars: "Be quiet and do not show progress bars."
  }
  output {
    File out_stdout = stdout()
  }
}