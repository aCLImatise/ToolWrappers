version 1.0

task SubtractBedGraphs.pl {
  input {
    String? cov
    Boolean? cov_thresh
    String? name
    Boolean? center
    String bed_graph_one
    String bed_graph_two
  }
  command <<<
    subtractBedGraphs.pl \
      ~{bed_graph_one} \
      ~{bed_graph_two} \
      ~{if defined(cov) then ("-cov " +  '"' + cov + '"') else ""} \
      ~{true="-covThresh" false="" cov_thresh} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""} \
      ~{true="-center" false="" center}
  >>>
  parameter_meta {
    cov: "(to remove regions with low coverage)"
    cov_thresh: "<#> (fraction of average coverage below which to skip region, default: 0.15)"
    name: "(name for track, default: autogenerated)"
    center: "(Center output on the mean of the bedGraph - remove global drift)"
    bed_graph_one: ""
    bed_graph_two: ""
  }
}