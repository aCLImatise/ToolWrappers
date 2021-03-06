version 1.0

task AdaptFilterCoveragesh {
  input {
    File? file
    File? directory_optional_default
    String? value_filter_values
    File? ad_end_outputted
    String? v
    String? usage_message
  }
  command <<<
    adapt_filter_coverage_sh \
      ~{if defined(file) then ("-i " +  '"' + file + '"') else ""} \
      ~{if defined(directory_optional_default) then ("-o " +  '"' + directory_optional_default + '"') else ""} \
      ~{if defined(value_filter_values) then ("-c " +  '"' + value_filter_values + '"') else ""} \
      ~{if defined(ad_end_outputted) then ("-s " +  '"' + ad_end_outputted + '"') else ""} \
      ~{if defined(v) then ("-v " +  '"' + v + '"') else ""} \
      ~{if defined(usage_message) then ("-h " +  '"' + usage_message + '"') else ""}
  >>>
  parameter_meta {
    file: "file"
    directory_optional_default: "directory (optional). By default the file is replaced in the same location"
    value_filter_values: "value to filter >= values. If not supplied, all records will be outputted"
    ad_end_outputted: "to ad at the end of the outputted file (list of accession numbers)"
    v: ""
    usage_message: "usage message"
  }
  output {
    File out_stdout = stdout()
  }
}