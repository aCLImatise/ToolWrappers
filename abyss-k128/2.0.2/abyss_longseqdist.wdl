version 1.0

task AbyssLongseqdist {
  input {
    String? km_er
    String? min_gap
    Boolean? verbose
    String sam
    String dist
  }
  command <<<
    abyss-longseqdist \
      ~{sam} \
      ~{dist} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(min_gap) then ("--min-gap " +  '"' + min_gap + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    km_er: "length of a k-mer"
    min_gap: "minimum scaffold gap length to output [200]"
    verbose: "display verbose output"
    sam: "BWA-MEM alignments of long sequences to the assembly"
    dist: "estimates of the distance between contigs"
  }
}