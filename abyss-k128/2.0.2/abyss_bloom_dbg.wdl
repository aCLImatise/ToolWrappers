version 1.0

task AbyssBloomDbg {
  input {
    String? __assemblyfasta
    String? bloom_size
    Boolean? chastity
    Boolean? no_chastity
    File? graph
    String? num_hashes
    String? threads
    Boolean? trim_masked
    Boolean? no_trim_masked
    String? km_er
    String? kc
    File? out
    String? trim_quality
    String? mask_quality
    Boolean? standard_quality
    Boolean? illumina_quality
    Boolean? trim_length
    Boolean? verbose
    String? single_km_er
    String? qr_seed
    String? spaced_seed
    File? cov_track
    File? trace_file
    File? ref
  }
  command <<<
    abyss-bloom-dbg \
      ~{if defined(__assemblyfasta) then ("-G " +  '"' + __assemblyfasta + '"') else ""} \
      ~{if defined(bloom_size) then ("--bloom-size " +  '"' + bloom_size + '"') else ""} \
      ~{true="--chastity" false="" chastity} \
      ~{true="--no-chastity" false="" no_chastity} \
      ~{if defined(graph) then ("--graph " +  '"' + graph + '"') else ""} \
      ~{if defined(num_hashes) then ("--num-hashes " +  '"' + num_hashes + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--trim-masked" false="" trim_masked} \
      ~{true="--no-trim-masked" false="" no_trim_masked} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(kc) then ("--kc " +  '"' + kc + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(trim_quality) then ("--trim-quality " +  '"' + trim_quality + '"') else ""} \
      ~{if defined(mask_quality) then ("--mask-quality " +  '"' + mask_quality + '"') else ""} \
      ~{true="--standard-quality" false="" standard_quality} \
      ~{true="--illumina-quality" false="" illumina_quality} \
      ~{true="--trim-length" false="" trim_length} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(single_km_er) then ("--single-kmer " +  '"' + single_km_er + '"') else ""} \
      ~{if defined(qr_seed) then ("--qr-seed " +  '"' + qr_seed + '"') else ""} \
      ~{if defined(spaced_seed) then ("--spaced-seed " +  '"' + spaced_seed + '"') else ""} \
      ~{if defined(cov_track) then ("--cov-track " +  '"' + cov_track + '"') else ""} \
      ~{if defined(trace_file) then ("--trace-file " +  '"' + trace_file + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""}
  >>>
  parameter_meta {
    __assemblyfasta: "[options] <FASTQ> [FASTQ]... > assembly.fasta"
    bloom_size: "overall memory budget for the assembly in bytes. Unit suffixes 'k' (kilobytes), 'M' (megabytes), or 'G' (gigabytes) may be used. [required]"
    chastity: "discard unchaste reads [default]"
    no_chastity: "do not discard unchaste reads"
    graph: "write de Bruijn graph to FILE (GraphViz)"
    num_hashes: "number of Bloom filter hash functions [1]"
    threads: "use N parallel threads [1]"
    trim_masked: "trim masked bases from the ends of reads"
    no_trim_masked: "do not trim masked bases from the ends of reads [default]"
    km_er: "the size of a k-mer [required]"
    kc: "use a cascading Bloom filter with N levels, instead of a counting Bloom filter [2]"
    out: "write the contigs to FILE [STDOUT]"
    trim_quality: "trim bases from the ends of reads whose quality is less than the threshold"
    mask_quality: "mask all low quality bases as `N'"
    standard_quality: "zero quality is `!' (33), typically for FASTQ and SAM files [default]"
    illumina_quality: "zero quality is `@' (64), typically for qseq and export files"
    trim_length: "max branch length to trim, in k-mers [k]"
    verbose: "display verbose output"
    single_km_er: "use a spaced seed that consists of two k-mers separated by a gap. K must be chosen such that K <= k/2"
    qr_seed: "use a spaced seed than consists of two mirrored QR seeds separated by a gap.  The following must hold: (a) N must be prime, (b) N >= 11, (c) N <= k/2"
    spaced_seed: "bitmask indicating k-mer positions to be ignored during hashing. The pattern must be symmetric"
    cov_track: "WIG track with 0/1 indicating k-mers with coverage above the -c threshold. A reference must also be specified with -R."
    trace_file: "write debugging info about extension of each read to FILE"
    ref: "specify a reference genome. FILE may be FASTA, FASTQ, SAM, or BAM and may be gzipped."
  }
}