version 1.0

task Byobuulevel {
  input {
    Boolean? accessibility_mode_enabled
    Boolean? display_current_value
    Int? current_value_indicator
    Boolean? enable_debug_output
    Int? number_decimal_use
    Boolean? invert_colour_scheme
    Boolean? list_available_themes
    Int? minimum_value_default
    Boolean? supress_output_newline
    Boolean? permissive_mode_current
    Boolean? suppress_messages_requires
    Boolean? reverse_display_rating
    Int? name_theme_defaultvbars
    Int? specify_user_values
    Int? width_rating_default
    Int? maximum_value_default
    Int number_dot
  }
  command <<<
    byobu_ulevel \
      ~{number_dot} \
      ~{if (accessibility_mode_enabled) then "-a" else ""} \
      ~{if (display_current_value) then "-b" else ""} \
      ~{if defined(current_value_indicator) then ("-c " +  '"' + current_value_indicator + '"') else ""} \
      ~{if (enable_debug_output) then "-d" else ""} \
      ~{if defined(number_decimal_use) then ("-e " +  '"' + number_decimal_use + '"') else ""} \
      ~{if (invert_colour_scheme) then "-i" else ""} \
      ~{if (list_available_themes) then "-l" else ""} \
      ~{if defined(minimum_value_default) then ("-m " +  '"' + minimum_value_default + '"') else ""} \
      ~{if (supress_output_newline) then "-n" else ""} \
      ~{if (permissive_mode_current) then "-p" else ""} \
      ~{if (suppress_messages_requires) then "-q" else ""} \
      ~{if (reverse_display_rating) then "-r" else ""} \
      ~{if defined(name_theme_defaultvbars) then ("-t " +  '"' + name_theme_defaultvbars + '"') else ""} \
      ~{if defined(specify_user_values) then ("-u " +  '"' + specify_user_values + '"') else ""} \
      ~{if defined(width_rating_default) then ("-w " +  '"' + width_rating_default + '"') else ""} \
      ~{if defined(maximum_value_default) then ("-x " +  '"' + maximum_value_default + '"') else ""}
  >>>
  parameter_meta {
    accessibility_mode_enabled: ": Accessibility mode: only output ASCII.\\n(Also enabled if variable 'BYOBU_A11Y' set)."
    display_current_value: ": Display current value as space if zero, rather than lowest\\n'value' of theme."
    current_value_indicator: ": Current value of your indicator."
    enable_debug_output: ": Enable debug output."
    number_decimal_use: ": Number of decimal places to use for accessibility mode\\n(default=2)."
    invert_colour_scheme: ": Invert colour scheme (rating themes only)."
    list_available_themes: ": List available themes. If '-t' also specified,\\nshow all values for specified theme."
    minimum_value_default: ": Minimum value (default=0)."
    supress_output_newline: ": Supress output of newline character."
    permissive_mode_current: ": Permissive mode - if current value out of bounds, set it\\nto the nearest bound (min or max)."
    suppress_messages_requires: ": Suppress messages (requires '-t')."
    reverse_display_rating: ": Reverse 'direction' of display (rating theme only)."
    name_theme_defaultvbars: ": Name of theme (default=vbars_8)."
    specify_user_values: ": Specify a user theme (2 or more values)."
    width_rating_default: ": Width of rating theme (default=5)."
    maximum_value_default: ": Maximum value (default=100)."
    number_dot: "- The final '_<number>' in a theme name denotes the number of glyphs"
  }
  output {
    File out_stdout = stdout()
  }
}