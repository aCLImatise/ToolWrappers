version 1.0

task GrootReport {
  input {
    String? bam_file
    Float? cov_cut_off
    Boolean? low_cov
    String? index_dir
    String? log
    Int? processors
    Boolean? profiling
    String? flags
  }
  command <<<
    groot report \
      ~{flags} \
      ~{if defined(bam_file) then ("--bamFile " +  '"' + bam_file + '"') else ""} \
      ~{if defined(cov_cut_off) then ("--covCutoff " +  '"' + cov_cut_off + '"') else ""} \
      ~{true="--lowCov" false="" low_cov} \
      ~{if defined(index_dir) then ("--indexDir " +  '"' + index_dir + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(processors) then ("--processors " +  '"' + processors + '"') else ""} \
      ~{true="--profiling" false="" profiling}
  >>>
  parameter_meta {
    bam_file: "BAM file generated by groot alignment (will use STDIN if not provided)"
    cov_cut_off: "coverage cutoff for reporting ARGs (default 0.97)"
    low_cov: "reports ARGs which don't have 5' or 3' coverage (overrides -c option)"
    index_dir: "directory for to write/read the GROOT index files"
    log: "filename for log file (default \"groot.log\")"
    processors: "number of processors to use (default 1)"
    profiling: "create the files needed to profile GROOT using the go tool pprof"
    flags: ""
  }
}