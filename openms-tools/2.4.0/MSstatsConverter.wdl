version 1.0

task MSstatsConverter {
  input {
    String? in
    File? in_design
    String? ms_stats_bio_replicate
    String? ms_stats_condition
    Boolean? labeled_reference_peptides
    File? out
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    MSstatsConverter \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(in_design) then ("-in_design " +  '"' + in_design + '"') else ""} \
      ~{if defined(ms_stats_bio_replicate) then ("-msstats_bioreplicate " +  '"' + ms_stats_bio_replicate + '"') else ""} \
      ~{if defined(ms_stats_condition) then ("-msstats_condition " +  '"' + ms_stats_condition + '"') else ""} \
      ~{if (labeled_reference_peptides) then "-labeled_reference_peptides" else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in: "*                                     Input consensusXML with peptide intensities (valid formats: 'consensusXML')"
    in_design: "*                       Experimental Design file (valid formats: 'tsv')"
    ms_stats_bio_replicate: "Which column in the condition table should be used for MSstats 'BioReplicate' (default: 'MSstats_BioReplicate')"
    ms_stats_condition: "Which column in the condition table should be used for MSstats 'Condition' (default: 'MSstats_Condition')"
    labeled_reference_peptides: "If set, IsotopeLabelType is 'H', else 'L'"
    out: "*                                   Input CSV file for MSstats. (valid formats: 'csv')"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
  }
}