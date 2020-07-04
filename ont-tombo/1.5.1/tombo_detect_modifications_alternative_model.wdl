version 1.0

task TomboDetectModificationsAlternativeModel {
  input {
    Boolean? print_available_models
    Boolean? dna
    Boolean? rna
    String? per_read_statistics_basename
    String? num_most_significant_stored
    String? multiprocess_region_size
    String? processes
    String? corrected_group
    Array[String] base_call_subgroups
    Boolean? quiet
  }
  command <<<
    tombo detect_modifications alternative_model \
      ~{true="--print-available-models" false="" print_available_models} \
      ~{true="--dna" false="" dna} \
      ~{true="--rna" false="" rna} \
      ~{if defined(per_read_statistics_basename) then ("--per-read-statistics-basename " +  '"' + per_read_statistics_basename + '"') else ""} \
      ~{if defined(num_most_significant_stored) then ("--num-most-significant-stored " +  '"' + num_most_significant_stored + '"') else ""} \
      ~{if defined(multiprocess_region_size) then ("--multiprocess-region-size " +  '"' + multiprocess_region_size + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    print_available_models: "Print available alternative models and exit."
    dna: "Explicitly select canonical DNA model. Default: Automatically determine from FAST5s"
    rna: "Explicitly select canonical RNA model. Default: Automatically determine from FAST5s"
    per_read_statistics_basename: "Base for binary files containing per-read statistics from statistical testing. Filenames will be [--per- read-statistics-basename].[--alternate- bases]?.tombo.per_read_stats"
    num_most_significant_stored: "Number of the most significant sites to store for faster access. If a longer list of most significant sites is required the list must be re-computed from all batches. Very large values can increase RAM usage. Default: 100000"
    multiprocess_region_size: "Size of regions over which to multiprocesses statistic computation. For very deep samples a smaller value is recommmended in order to control memory consumption. Default: 10000"
    processes: "Number of processes. Default: 1"
    corrected_group: "FAST5 group created by resquiggle command. Default: RawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under /Analyses/[--basecall- group]/) containing basecalls and created within [--corrected-group] containing re-squiggle results. Default: ['BaseCalled_template']"
    quiet: "Don't print status information."
  }
}