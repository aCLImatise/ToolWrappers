version 1.0

task PretextSnapshotsse41 {
  input {
    File? m_slash_map
    String? f_slash_format
    Int? r_slash_resolution
    Int? c_slash_colour_map
    Boolean? print_colour_map_names
    Int? jpegquality
    File? oslash_folder
    String? prefix
    String? sequences
    Boolean? sequence_help
    Int? min_texels
    Int? grid_size
    Int? grid_colour
    Boolean? print_sequence_names
    Int? verbose
    Boolean? licence
    Boolean? third_party
  }
  command <<<
    PretextSnapshot_sse41 \
      ~{if defined(m_slash_map) then ("-m/--map " +  '"' + m_slash_map + '"') else ""} \
      ~{if defined(f_slash_format) then ("-f/--format " +  '"' + f_slash_format + '"') else ""} \
      ~{if defined(r_slash_resolution) then ("-r/--resolution " +  '"' + r_slash_resolution + '"') else ""} \
      ~{if defined(c_slash_colour_map) then ("-c/--colourMap " +  '"' + c_slash_colour_map + '"') else ""} \
      ~{if (print_colour_map_names) then "--printColourMapNames" else ""} \
      ~{if defined(jpegquality) then ("--jpegQuality " +  '"' + jpegquality + '"') else ""} \
      ~{if defined(oslash_folder) then ("-o/--folder " +  '"' + oslash_folder + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(sequences) then ("--sequences " +  '"' + sequences + '"') else ""} \
      ~{if (sequence_help) then "--sequenceHelp" else ""} \
      ~{if defined(min_texels) then ("--minTexels " +  '"' + min_texels + '"') else ""} \
      ~{if defined(grid_size) then ("--gridSize " +  '"' + grid_size + '"') else ""} \
      ~{if defined(grid_colour) then ("--gridColour " +  '"' + grid_colour + '"') else ""} \
      ~{if (print_sequence_names) then "--printSequenceNames" else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if (licence) then "--licence" else ""} \
      ~{if (third_party) then "--thirdParty" else ""}
  >>>
  parameter_meta {
    m_slash_map: ":           Path to a pretext map.\\nThis option is required, except when using:\\n--help,\\n--sequenceHelp,\\n--printColourMapNames,\\n--version,\\n--licence,\\n--thirdParty"
    f_slash_format: ":        Image format, one of \\\"png\\\"(default) \\\"bmp\\\" or \\\"jpeg\\\"."
    r_slash_resolution: ":    Image resolution, a positive integer, default 1080.\\nFor non-square images this will be the resolution\\nof the longest dimension."
    c_slash_colour_map: ":    Either, a non-negative integer, indexing the colour map to use.\\nOr, the name of the colour map to use.\\nDefaults to \\\"Three Wave Blue-Green-Yellow\\\" i.e. \\\"5\\\"."
    print_colour_map_names: ":  Prints a list of the available colour maps.\\nCannot be used with any other option."
    jpegquality: ":     JPEG quality factor, an integer between 1 and 100, default 80.\\nLarger values result in increased image quality and file size.\\nOnly applicable to JPEG images."
    oslash_folder: ":       Output folder path, will be created if it doesn't exist.\\nDefaults to the name of the pretext map."
    prefix: ":           Prefix name for all image files.\\nDefaults to the name of the pretext map + \\\"_\\\"."
    sequences: ":      Sequence specification string. Each entry, except for \\\"=all\\\", corresponds to one output image.\\nDefaults to \\\"=full, =all\\\"."
    sequence_help: ":         Sequence specification string format documentation.\\nCannot be used with any other option."
    min_texels: ":       Minimum map texels per image (along a single dimension), a positive integer, default 64.\\nOutput images over too small a range that violate this minimum will not be created."
    grid_size: ":       Width in pixels of the sequence separation grid, a non-negative integer, default 1.\\nSet to 0 to not overlay a grid."
    grid_colour: ":       Colour of the sequence separation grid.\\nEither, one of: \\\"black\\\"(default), \\\"white\\\", \\\"red\\\", \\\"green\\\", \\\"blue\\\", \\\"yellow\\\", \\\"cyan\\\" or \\\"magenta\\\".\\nOr, a sRGBA 32-bit hex code in RRGGBBAA format, e.g. \\\"ff00ff80\\\" (magenta at half-occupancy)."
    print_sequence_names: ":   Prints a list of the individual sequence names in the map, in order of appearance.\\nCan only be used with the -m/--map option."
    verbose: ":         Verbosity level, one of: \\\"3\\\"(default) for error, warning and status messages.\\n\\\"2\\\" for error and warning messages.\\n\\\"1\\\" for error messages.\\n\\\"0\\\" for no messages.\\nWarning and status messages are printed to stdout, error messages to stderr."
    licence: ":              Prints the software licence.\\nCannot be used with any other option."
    third_party: ":           Prints a list of the third-party libraries used, along with their respective licences.\\nCannot be used with any other option.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_oslash_folder = "${in_oslash_folder}"
  }
}