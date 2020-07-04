version 1.0

task IRFinder {
  input {
    String? version_number_current
    String? this_usage_information
    String? fastq_default_quantifies
    String? directory_should_yet
    Int? integer_parsed_mode
    String? typically_ercc_reference
    String? bed_regions_excluded
    String? nonoverlapping_bed_file
    String? must_same_fasta
    String? must_same_gtf
    String? sequence_disable_universal
    String? default_number_physical
    String? directory_default_current
    String? memory_mode_nosharedmemory
    String? executable_default_is
    String? extra_string_parsed
    String? output_sort_fragment
    String? memory_maximum_memory
    String raw_reads_one_dot_fast_q
  }
  command <<<
    IRFinder \
      ~{raw_reads_one_dot_fast_q} \
      ~{if defined(version_number_current) then ("-v " +  '"' + version_number_current + '"') else ""} \
      ~{if defined(this_usage_information) then ("-h " +  '"' + this_usage_information + '"') else ""} \
      ~{if defined(fastq_default_quantifies) then ("-m " +  '"' + fastq_default_quantifies + '"') else ""} \
      ~{if defined(directory_should_yet) then ("-r " +  '"' + directory_should_yet + '"') else ""} \
      ~{if defined(integer_parsed_mode) then ("-j " +  '"' + integer_parsed_mode + '"') else ""} \
      ~{if defined(typically_ercc_reference) then ("-e " +  '"' + typically_ercc_reference + '"') else ""} \
      ~{if defined(bed_regions_excluded) then ("-b " +  '"' + bed_regions_excluded + '"') else ""} \
      ~{if defined(nonoverlapping_bed_file) then ("-R " +  '"' + nonoverlapping_bed_file + '"') else ""} \
      ~{if defined(must_same_fasta) then ("-f " +  '"' + must_same_fasta + '"') else ""} \
      ~{if defined(must_same_gtf) then ("-g " +  '"' + must_same_gtf + '"') else ""} \
      ~{if defined(sequence_disable_universal) then ("-a " +  '"' + sequence_disable_universal + '"') else ""} \
      ~{if defined(default_number_physical) then ("-t " +  '"' + default_number_physical + '"') else ""} \
      ~{if defined(directory_default_current) then ("-d " +  '"' + directory_default_current + '"') else ""} \
      ~{if defined(memory_mode_nosharedmemory) then ("-s " +  '"' + memory_mode_nosharedmemory + '"') else ""} \
      ~{if defined(executable_default_is) then ("-S " +  '"' + executable_default_is + '"') else ""} \
      ~{if defined(extra_string_parsed) then ("-y " +  '"' + extra_string_parsed + '"') else ""} \
      ~{if defined(output_sort_fragment) then ("-u " +  '"' + output_sort_fragment + '"') else ""} \
      ~{if defined(memory_maximum_memory) then ("-M " +  '"' + memory_maximum_memory + '"') else ""}
  >>>
  parameter_meta {
    version_number_current: "version number of current IRFinder."
    this_usage_information: "this usage information."
    fastq_default_quantifies: "FastQ (default. Quantifies intron retention from FASTQ file); BAM (quantifies intron retention from a name-sorted BAM file); BuildRef (builds IRFinder reference from Ensembl FTP site. Requires Internet), BuildRefDownload (only downloads FASTA and GTF files from Ensembl FTP site, without building IRFinder reference. Requires Internet), BuildRefProcess (builds IRFinder reference from local FASTA and GTF files), BuildRefFromSTARRef (builds IRFinder reference from a local STAR reference)."
    directory_should_yet: ": Directory should not yet exist, will be created."
    integer_parsed_mode: ": an integer that is parsed to '--sjdbOverhang' under STAR 'genomeGenerate' mode. Default: 150."
    typically_ercc_reference: ": Typically an ERCC reference."
    bed_regions_excluded: ": BED of regions to be excluded from analysis."
    nonoverlapping_bed_file: ": A non-overlapping BED file of additional Regions of Interest for read counts."
    must_same_fasta: ": This MUST be the same FASTA file used to generate STARRefDir. Ignored when IRFinder can automatically locate the original file."
    must_same_gtf: ": This MUST be the same GTF file used to generate STARRefDir. Ignored when IRFinder can automatically locate the original file."
    sequence_disable_universal: "sequence: 'none' to disable. Default: Illumina Universal is trimmed."
    default_number_physical: ": Default is the number of physical CPUs"
    directory_default_current: "Directory: Default is the current directory."
    memory_mode_nosharedmemory: "memory mode: NoSharedMemory (default), LoadAndKeep, LoadAndRemove."
    executable_default_is: "executable: Default is 'STAR'."
    extra_string_parsed: ": an extra string that is parsed to STAR for reads alignment."
    output_sort_fragment: "output: Do not sort the read fragment BAM file. Default is to sort ONLY IF a novosort license is present."
    memory_maximum_memory: "memory. Maximum memory to use for sort, in MB. Default, auto-detected no greater than 10,000MB."
    raw_reads_one_dot_fast_q: ""
  }
}