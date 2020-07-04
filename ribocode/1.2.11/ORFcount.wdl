version 1.0

task ORFcount {
  input {
    String? stranded
    Int? mina_qual
    String? count_mode
    String? gtf
    String? rpf_mapping_file
    String? first_exclude_codons
    String? last_exclude_codons
    String? exclude_min_orf
    Int? min_read
    Int? max_read
    String? write_orf_counts
  }
  command <<<
    ORFcount \
      ~{if defined(stranded) then ("--stranded " +  '"' + stranded + '"') else ""} \
      ~{if defined(mina_qual) then ("--minaqual " +  '"' + mina_qual + '"') else ""} \
      ~{if defined(count_mode) then ("--count_mode " +  '"' + count_mode + '"') else ""} \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(rpf_mapping_file) then ("--rpf_mapping_file " +  '"' + rpf_mapping_file + '"') else ""} \
      ~{if defined(first_exclude_codons) then ("--first_exclude_codons " +  '"' + first_exclude_codons + '"') else ""} \
      ~{if defined(last_exclude_codons) then ("--last_exclude_codons " +  '"' + last_exclude_codons + '"') else ""} \
      ~{if defined(exclude_min_orf) then ("--exclude_min_ORF " +  '"' + exclude_min_orf + '"') else ""} \
      ~{if defined(min_read) then ("--min_read " +  '"' + min_read + '"') else ""} \
      ~{if defined(max_read) then ("--max_read " +  '"' + max_read + '"') else ""} \
      ~{if defined(write_orf_counts) then ("--output " +  '"' + write_orf_counts + '"') else ""}
  >>>
  parameter_meta {
    stranded: "whether the data is strand-specific, reverse means reversed strand interpretation. (default: yes)"
    mina_qual: "skip all reads with alignment quality lower than the given minimum value (default:10)"
    count_mode: "mode to handle reads overlapping more than one ORF (choices: union,intersection-strict;default: intersection-strict)"
    gtf: "ORF gtf file generated by RiboCode, default:final_result"
    rpf_mapping_file: "ribo-seq BAM/SAM file aligned to the genome, multiple files should be separated with \",\""
    first_exclude_codons: "excluding the reads aligned to the first few codons of the ORF, default:15"
    last_exclude_codons: "excluding the reads aligned to the last few codons of the ORF, default:5"
    exclude_min_orf: "the minimal length(nt) of ORF for excluding the reads aligned to first and last few codons, default:100"
    min_read: "minimal read length for the counting of RPF,default:26"
    max_read: "maximal read length for the counting of RPF,default:34"
    write_orf_counts: "write out all ORF counts into a file, default is to write to standard output"
  }
}