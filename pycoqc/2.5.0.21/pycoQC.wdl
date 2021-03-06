version 1.0

task PycoQC {
  input {
    Boolean? verbose
    Boolean? quiet
    Boolean? summary_file
    Boolean? barcode_file
    Boolean? bam_file
    File? html_outfile
    File? json_outfile
    Int? min_pass_qual
    Int? min_pass_len
    Boolean? filter_calibration
    Boolean? filter_duplicated
    Int? min_barcode_percent
    String? report_title
    File? template_file
    File? config_file
    Int? sample
    Boolean? default_config
  }
  command <<<
    pycoQC \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (summary_file) then "--summary_file" else ""} \
      ~{if (barcode_file) then "--barcode_file" else ""} \
      ~{if (bam_file) then "--bam_file" else ""} \
      ~{if defined(html_outfile) then ("--html_outfile " +  '"' + html_outfile + '"') else ""} \
      ~{if defined(json_outfile) then ("--json_outfile " +  '"' + json_outfile + '"') else ""} \
      ~{if defined(min_pass_qual) then ("--min_pass_qual " +  '"' + min_pass_qual + '"') else ""} \
      ~{if defined(min_pass_len) then ("--min_pass_len " +  '"' + min_pass_len + '"') else ""} \
      ~{if (filter_calibration) then "--filter_calibration" else ""} \
      ~{if (filter_duplicated) then "--filter_duplicated" else ""} \
      ~{if defined(min_barcode_percent) then ("--min_barcode_percent " +  '"' + min_barcode_percent + '"') else ""} \
      ~{if defined(report_title) then ("--report_title " +  '"' + report_title + '"') else ""} \
      ~{if defined(template_file) then ("--template_file " +  '"' + template_file + '"') else ""} \
      ~{if defined(config_file) then ("--config_file " +  '"' + config_file + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if (default_config) then "--default_config" else ""}
  >>>
  parameter_meta {
    verbose: "Increase verbosity"
    quiet: "Reduce verbosity"
    summary_file: "[SUMMARY_FILE [SUMMARY_FILE ...]], -f [SUMMARY_FILE [SUMMARY_FILE ...]]\\nPath to a sequencing_summary generated by Albacore\\n1.0.0 + (read_fast5_basecaller.py) / Guppy 2.1.3+\\n(guppy_basecaller). One can also pass multiple space\\nseparated file paths or a UNIX style regex matching\\nmultiple files (Required)"
    barcode_file: "[BARCODE_FILE [BARCODE_FILE ...]], -b [BARCODE_FILE [BARCODE_FILE ...]]\\nPath to the barcode_file generated by Guppy 2.1.3+\\n(guppy_barcoder) or Deepbinner 0.2.0+. This is not a\\nrequired file. One can also pass multiple space\\nseparated file paths or a UNIX style regex matching\\nmultiple files (optional)"
    bam_file: "[BAM_FILE [BAM_FILE ...]], -a [BAM_FILE [BAM_FILE ...]]\\nPath to a Bam file corresponding to reads in the\\nsummary_file. Preferably aligned with Minimap2 One can\\nalso pass multiple space separated file paths or a\\nUNIX style regex matching multiple files (optional)"
    html_outfile: "Path to an output html file report (required if\\njson_outfile not given)"
    json_outfile: "Path to an output json file report (required if\\nhtml_outfile not given)"
    min_pass_qual: "Minimum quality to consider a read as 'pass' (default:\\n7)"
    min_pass_len: "Minimum read length to consider a read as 'pass'\\n(default: 0)"
    filter_calibration: "If given, reads flagged as calibration strand by the\\nbasecaller are removed (default: False)"
    filter_duplicated: "If given, duplicated read_ids are removed but the\\nfirst occurence is kept (Guppy sometimes outputs the\\nsame read multiple times) (default: False)"
    min_barcode_percent: "Minimal percent of total reads to retain barcode\\nlabel. If below, the barcode value is set as\\n`unclassified` (default: 0.1)"
    report_title: "Title to use in the html report (default: PycoQC\\nreport)"
    template_file: "Jinja2 html template for the html report (default: )"
    config_file: "Path to a JSON configuration file for the html report.\\nIf not provided, looks for it in ~/.pycoQC and\\n~/.config/pycoQC/config. If it's still not found,\\nfalls back to default parameters. The first level keys\\nare the names of the plots to be included. The second\\nlevel keys are the parameters to pass to each plotting\\nfunction (default: )\\\")"
    sample: "If not None a n number of reads will be randomly\\nselected instead of the entire dataset for ploting\\nfunction (deterministic sampling) (default: 100000)"
    default_config: "Print default configuration file. Can be used to\\ngenerate a template JSON file (default: False)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_html_outfile = "${in_html_outfile}"
    File out_json_outfile = "${in_json_outfile}"
  }
}