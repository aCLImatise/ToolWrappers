version 1.0

task ShuffleBank {
  input {
    String? bank
    File? common_file_prefix
    Boolean? dump_contigs_bank
    Boolean? dump_reads_bank
    Boolean? eid
    Boolean? iid
    Boolean? dump_fastq_format
    Int? use_min_base
    Boolean? ignore_clear_range
    Boolean? display_details_header
    Int? set_maximum_number
    Boolean? fofn_list_files
    String? list_files_specifying
  }
  command <<<
    shuffleBank \
      ~{if defined(bank) then ("-bank " +  '"' + bank + '"') else ""} \
      ~{if defined(common_file_prefix) then ("-p " +  '"' + common_file_prefix + '"') else ""} \
      ~{if (dump_contigs_bank) then "-c" else ""} \
      ~{if (dump_reads_bank) then "-r" else ""} \
      ~{if (eid) then "-eid" else ""} \
      ~{if (iid) then "-iid" else ""} \
      ~{if (dump_fastq_format) then "-f" else ""} \
      ~{if defined(use_min_base) then ("-Q " +  '"' + use_min_base + '"') else ""} \
      ~{if (ignore_clear_range) then "-a" else ""} \
      ~{if (display_details_header) then "-d" else ""} \
      ~{if defined(set_maximum_number) then ("-L " +  '"' + set_maximum_number + '"') else ""} \
      ~{if (fofn_list_files) then "-E" else ""} \
      ~{if defined(list_files_specifying) then ("-I " +  '"' + list_files_specifying + '"') else ""}
  >>>
  parameter_meta {
    bank: "bank where assembly is stored"
    common_file_prefix: "Common file prefix to add to the output"
    dump_contigs_bank: "Dump contigs from the bank (default)"
    dump_reads_bank: "Dump reads from the bank"
    eid: "report eids"
    iid: "report iids (default)"
    dump_fastq_format: "Dump in fastq format"
    use_min_base: "Use this as the min base quality (default: 33 / Sanger FASTQ)"
    ignore_clear_range: "Ignore clear range and dump entire sequence"
    display_details_header: "Display details on header line"
    set_maximum_number: "Set the maximum number of bases per line (Default: 70)"
    fofn_list_files: "<fofn>      List of files specifying by EID where to write"
    list_files_specifying: "List of files specifying by EID where to write"
  }
  output {
    File out_stdout = stdout()
    File out_common_file_prefix = "${in_common_file_prefix}"
  }
}