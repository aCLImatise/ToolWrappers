version 1.0

task AugurMask {
  input {
    String? sequences
    File? mask
    Int? mask_from_beginning
    Int? mask_from_end
    Array[String] mask_sites
    File? output_file_default
    Boolean? no_cleanup
  }
  command <<<
    augur mask \
      ~{if defined(sequences) then ("--sequences " +  '"' + sequences + '"') else ""} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{if defined(mask_from_beginning) then ("--mask-from-beginning " +  '"' + mask_from_beginning + '"') else ""} \
      ~{if defined(mask_from_end) then ("--mask-from-end " +  '"' + mask_from_end + '"') else ""} \
      ~{if defined(mask_sites) then ("--mask-sites " +  '"' + mask_sites + '"') else ""} \
      ~{if defined(output_file_default) then ("--output " +  '"' + output_file_default + '"') else ""} \
      ~{if (no_cleanup) then "--no-cleanup" else ""}
  >>>
  parameter_meta {
    sequences: "sequences in VCF or FASTA format (default: None)"
    mask: "locations to be masked in either BED file format, DRM\\nformat, or one 1-indexed site per line. (default:\\nNone)"
    mask_from_beginning: "FASTA Only: Number of sites to mask from beginning\\n(default: 0)"
    mask_from_end: "FASTA Only: Number of sites to mask from end (default:\\n0)"
    mask_sites: "1-indexed list of sites to mask (default: None)"
    output_file_default: "output file (default: None)"
    no_cleanup: "Leave intermediate files around. May be useful for\\ndebugging (default: True)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_default = "${in_output_file_default}"
  }
}