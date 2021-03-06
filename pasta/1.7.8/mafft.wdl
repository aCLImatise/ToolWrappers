version 1.0

task Mafft {
  input {
    Boolean? op
    Boolean? ep
    Boolean? max_iterate
    Boolean? clustal_out
    Boolean? reorder
    Boolean? quiet
    Boolean? thread
  }
  command <<<
    mafft \
      ~{if (op) then "--op" else ""} \
      ~{if (ep) then "--ep" else ""} \
      ~{if (max_iterate) then "--maxiterate" else ""} \
      ~{if (clustal_out) then "--clustalout" else ""} \
      ~{if (reorder) then "--reorder" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (thread) then "--thread" else ""}
  >>>
  parameter_meta {
    op: "# :         Gap opening penalty, default: 1.53"
    ep: "# :         Offset (works like gap extension penalty), default: 0.0"
    max_iterate: "# : Maximum number of iterative refinement, default: 0"
    clustal_out: ":   Output: clustal format, default: fasta"
    reorder: ":      Outorder: aligned, default: input order"
    quiet: ":        Do not report progress"
    thread: "# :     Number of threads (if unsure, --thread -1)"
  }
  output {
    File out_stdout = stdout()
  }
}