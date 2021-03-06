version 1.0

task BasecallNetworkpyRaw {
  input {
    String? alphabet
    File? compile
    File? input_strand_list
    Int? jobs
    Int? km_er_len
    Int? limit
    Float? min_prob
    Float? skip
    String? trans
    Boolean? no_transducer
    Boolean? no_bad
    Int? open_pore_fraction
    Int? trim
    String model
    String input_folder
  }
  command <<<
    basecall_network_py raw \
      ~{model} \
      ~{input_folder} \
      ~{if defined(alphabet) then ("--alphabet " +  '"' + alphabet + '"') else ""} \
      ~{if defined(compile) then ("--compile " +  '"' + compile + '"') else ""} \
      ~{if defined(input_strand_list) then ("--input_strand_list " +  '"' + input_strand_list + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if defined(km_er_len) then ("--kmer_len " +  '"' + km_er_len + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if defined(min_prob) then ("--min_prob " +  '"' + min_prob + '"') else ""} \
      ~{if defined(skip) then ("--skip " +  '"' + skip + '"') else ""} \
      ~{if defined(trans) then ("--trans " +  '"' + trans + '"') else ""} \
      ~{if (no_transducer) then "--no-transducer" else ""} \
      ~{if (no_bad) then "--no-bad" else ""} \
      ~{if defined(open_pore_fraction) then ("--open_pore_fraction " +  '"' + open_pore_fraction + '"') else ""} \
      ~{if defined(trim) then ("--trim " +  '"' + trim + '"') else ""}
  >>>
  parameter_meta {
    alphabet: "Alphabet of the sequences (default: b'ACGT')"
    compile: "File output compiled model (default: None)"
    input_strand_list: "Strand summary file containing subset (default: None)"
    jobs: "Number of threads to use when processing data\\n(default: 1)"
    km_er_len: "Length of kmer (default: 5)"
    limit: "Limit number of reads to process (default: None)"
    min_prob: "Minimum allowed probabiility for basecalls (default:\\n1e-05)"
    skip: "Skip penalty (default: 0.0)"
    trans: "step skip\\nBase transition probabilities (default: None)"
    no_transducer: "Model is transducer (Default: --transducer) (default:\\nTrue)"
    no_bad: "Model emits bad signal blocks as a separate state\\n(Default: --bad) (default: True)"
    open_pore_fraction: "Max fraction of signal to trim due to open pore\\n(default: 0)"
    trim: "end  Number of samples to trim off start and end (default:\\n(200, 10))\\n"
    model: "Pickled model file"
    input_folder: "Directory containing single-read fast5 files"
  }
  output {
    File out_stdout = stdout()
    File out_compile = "${in_compile}"
  }
}