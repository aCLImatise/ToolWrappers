version 1.0

task Lumpy {
  input {
    Boolean? genome_file_defines
    Boolean? show_evidence_call
    Boolean? file_read_default
    Boolean? mw
    Boolean? msw
    Boolean? tt
    Boolean? exclude_file_bed
    Boolean? temp_file_prefix
    Boolean? output_probability_curve
    Boolean? output_bedpe_instead
    Boolean? sr
    Boolean? pe
    Boolean? bed_pe
  }
  command <<<
    lumpy \
      ~{if (genome_file_defines) then "-g" else ""} \
      ~{if (show_evidence_call) then "-e" else ""} \
      ~{if (file_read_default) then "-w" else ""} \
      ~{if (mw) then "-mw" else ""} \
      ~{if (msw) then "-msw" else ""} \
      ~{if (tt) then "-tt" else ""} \
      ~{if (exclude_file_bed) then "-x" else ""} \
      ~{if (temp_file_prefix) then "-t" else ""} \
      ~{if (output_probability_curve) then "-P" else ""} \
      ~{if (output_bedpe_instead) then "-b" else ""} \
      ~{if (sr) then "-sr" else ""} \
      ~{if (pe) then "-pe" else ""} \
      ~{if (bed_pe) then "-bedpe" else ""}
  >>>
  parameter_meta {
    genome_file_defines: "Genome file (defines chromosome order)"
    show_evidence_call: "Show evidence for each call"
    file_read_default: "File read windows size (default 1000000)"
    mw: "minimum weight for a call"
    msw: "minimum per-sample weight for a call"
    tt: "trim threshold"
    exclude_file_bed: "exclude file bed file"
    temp_file_prefix: "temp file prefix, must be to a writeable directory"
    output_probability_curve: "output probability curve for each variant"
    output_bedpe_instead: "output BEDPE instead of VCF"
    sr: "bam_file:<file name>,\\nid:<sample name>,\\nback_distance:<distance>,\\nmin_mapping_threshold:<mapping quality>,\\nweight:<sample weight>,\\nmin_clip:<minimum clip length>,\\nread_group:<string>"
    pe: "bam_file:<file name>,\\nid:<sample name>,\\nhisto_file:<file name>,\\nmean:<value>,\\nstdev:<value>,\\nread_length:<length>,\\nmin_non_overlap:<length>,\\ndiscordant_z:<z value>,\\nback_distance:<distance>,\\nmin_mapping_threshold:<mapping quality>,\\nweight:<sample weight>,\\nread_group:<string>"
    bed_pe: "bedpe_file:<bedpe file>,\\nid:<sample name>,\\nweight:<sample weight>\\n"
  }
  output {
    File out_stdout = stdout()
  }
}