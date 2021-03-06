version 1.0

task CreateKUnitigsLargeK2 {
  input {
    Int? mer
    Int? nb_mers
    Int? val
    Int? threads
    File? ouput_file_stdout
    Int? quality_threshold
    Int? cont_on_low
    Int? min_len
    File? gzip
    File? load
    String cmdline_parse
    String var_input
  }
  command <<<
    create_k_unitigs_large_k2 \
      ~{cmdline_parse} \
      ~{var_input} \
      ~{if defined(mer) then ("--mer " +  '"' + mer + '"') else ""} \
      ~{if defined(nb_mers) then ("--nb-mers " +  '"' + nb_mers + '"') else ""} \
      ~{if defined(val) then ("--val " +  '"' + val + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(ouput_file_stdout) then ("--output " +  '"' + ouput_file_stdout + '"') else ""} \
      ~{if defined(quality_threshold) then ("--quality-threshold " +  '"' + quality_threshold + '"') else ""} \
      ~{if defined(cont_on_low) then ("--cont-on-low " +  '"' + cont_on_low + '"') else ""} \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if defined(load) then ("--load " +  '"' + load + '"') else ""}
  >>>
  parameter_meta {
    mer: "*k-mer size"
    nb_mers: "*Estimated number of distinct k-mers"
    val: "Value field length in hash (7)"
    threads: "Number of threads (1)"
    ouput_file_stdout: "Ouput file (stdout)"
    quality_threshold: "Count threshold for high-quality mers (2)"
    cont_on_low: "Max length of low quality mer run (0)"
    min_len: "Minimum length of k-unitig to output (k+1)"
    gzip: "Gzip output file. Ignored if -o not given. (false)"
    load: "Load jellyfish hash"
    cmdline_parse: ""
    var_input: ""
  }
  output {
    File out_stdout = stdout()
    File out_gzip = "${in_gzip}"
  }
}