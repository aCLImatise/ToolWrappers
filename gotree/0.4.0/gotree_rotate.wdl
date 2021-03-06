version 1.0

task GotreeRotate {
  input {
    String? input_tree_default
    File? rotated_tree_output
    String? format
    Int? seed
    Int? threads
    String rand
    String sort
  }
  command <<<
    gotree rotate \
      ~{rand} \
      ~{sort} \
      ~{if defined(input_tree_default) then ("--input " +  '"' + input_tree_default + '"') else ""} \
      ~{if defined(rotated_tree_output) then ("--output " +  '"' + rotated_tree_output + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    input_tree_default: "Input tree (default \\\"stdin\\\")"
    rotated_tree_output: "Rotated tree output file (default \\\"stdout\\\")"
    format: "Input tree format (newick, nexus, or phyloxml) (default \\\"newick\\\")"
    seed: "Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)"
    threads: "Number of threads (Max=8) (default 1)"
    rand: "Randomly rotates children of internal nodes"
    sort: "Sorts children of internal nodes by number of tips"
  }
  output {
    File out_stdout = stdout()
    File out_rotated_tree_output = "${in_rotated_tree_output}"
  }
}