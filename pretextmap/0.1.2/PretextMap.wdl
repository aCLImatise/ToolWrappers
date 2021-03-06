version 1.0

task PretextMap {
  input {
    Boolean? sort_order
    String? mapq
    Boolean? filter_include
    Boolean? filter_exclude
  }
  command <<<
    PretextMap \
      ~{if (sort_order) then "--sortorder" else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""} \
      ~{if (filter_include) then "--filterInclude" else ""} \
      ~{if (filter_exclude) then "--filterExclude" else ""}
  >>>
  parameter_meta {
    sort_order: "({descend}, ascend)"
    mapq: ""
    filter_include: "\\\"seq_ [, seq_]*\\\""
    filter_exclude: "\\\"seq_ [, seq_]*\\\")"
  }
  output {
    File out_stdout = stdout()
  }
}