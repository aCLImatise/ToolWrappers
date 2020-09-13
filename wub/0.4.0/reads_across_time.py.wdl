version 1.0

task ReadsAcrossTimepy {
  input {
    File? tab_separated_file_generated_fastqtimetabpy
    File? tab_separated_file_generated_bamalignmentlengthpy
    String? resampling_frequency_minutes
    String? report_pdf_readsacrosstimepdf
    String? output_tsv_readsacrosstimetsv
  }
  command <<<
    reads_across_time_py \
      ~{if defined(tab_separated_file_generated_fastqtimetabpy) then ("-i " +  '"' + tab_separated_file_generated_fastqtimetabpy + '"') else ""} \
      ~{if defined(tab_separated_file_generated_bamalignmentlengthpy) then ("-a " +  '"' + tab_separated_file_generated_bamalignmentlengthpy + '"') else ""} \
      ~{if defined(resampling_frequency_minutes) then ("-w " +  '"' + resampling_frequency_minutes + '"') else ""} \
      ~{if defined(report_pdf_readsacrosstimepdf) then ("-r " +  '"' + report_pdf_readsacrosstimepdf + '"') else ""} \
      ~{if defined(output_tsv_readsacrosstimetsv) then ("-t " +  '"' + output_tsv_readsacrosstimetsv + '"') else ""}
  >>>
  parameter_meta {
    tab_separated_file_generated_fastqtimetabpy: "Tab separated file generated by fastq_time_tab.py"
    tab_separated_file_generated_bamalignmentlengthpy: "Tab separated file generated by bam_alignment_length.py"
    resampling_frequency_minutes: "Resampling frequency in minutes."
    report_pdf_readsacrosstimepdf: "Report PDF (reads_across_time.pdf)."
    output_tsv_readsacrosstimetsv: "Output tsv (reads_across_time.tsv)."
  }
  output {
    File out_stdout = stdout()
  }
}