version 1.0

task GraphGtfspl {
  input {
    Boolean? display_list_possible
    Boolean? load_gtfs_instead
    Boolean? quick_load_file
    File? load_resolution_evalrc
    Boolean? more_options
    Boolean? options
  }
  command <<<
    graph_gtfs_pl \
      ~{if (display_list_possible) then "-G" else ""} \
      ~{if (load_gtfs_instead) then "-g" else ""} \
      ~{if (quick_load_file) then "-q" else ""} \
      ~{if defined(load_resolution_evalrc) then ("-r " +  '"' + load_resolution_evalrc + '"') else ""} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  parameter_meta {
    display_list_possible: ": Display list of possible x and y values for graphs"
    load_gtfs_instead: ": Load GTFs instead of lists of GTFs"
    quick_load_file: ": Quick load the gtf file.  Do not check them for errors."
    load_resolution_evalrc: ":  Load resolution from this file\\ninstead of users .eval.rc or default"
    more_options: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}