version 1.0

task ClusterSetspyClusterfail {
  input {
    String cluster_sets_do_tpy
  }
  command <<<
    ClusterSets_py cluster_fail \
      ~{cluster_sets_do_tpy}
  >>>
  parameter_meta {
    cluster_sets_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}