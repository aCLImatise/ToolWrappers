version 1.0

task BpChaosPlotpl {
  input {
    File? g_slash_graphics
    Int? h_slash_height
    String? f_slash_format
    File? i_slash_input
    String chaos_plot
  }
  command <<<
    bp_chaos_plot_pl \
      ~{chaos_plot} \
      ~{if defined(g_slash_graphics) then ("-g/--graphics " +  '"' + g_slash_graphics + '"') else ""} \
      ~{if defined(h_slash_height) then ("-h/--height " +  '"' + h_slash_height + '"') else ""} \
      ~{if defined(f_slash_format) then ("-f/--format " +  '"' + f_slash_format + '"') else ""} \
      ~{if defined(i_slash_input) then ("-i/--input " +  '"' + i_slash_input + '"') else ""}
  >>>
  parameter_meta {
    g_slash_graphics: "TYPE"
    h_slash_height: ""
    f_slash_format: ""
    i_slash_input: ""
    chaos_plot: ""
  }
  output {
    File out_stdout = stdout()
    File out_g_slash_graphics = "${in_g_slash_graphics}"
  }
}