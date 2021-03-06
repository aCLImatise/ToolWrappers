version 1.0

task Dcmpsprt {
  input {
    Boolean? arguments
    Boolean? _quiet_quiet
    Boolean? _verbose_details
    Boolean? _debug_information
    Boolean? ll
    Boolean? lc
    Boolean? _config_stringprocess
    Boolean? _printer_ame
    Boolean? _spool_spool
    Boolean? no_spool
    Boolean? portrait
    Boolean? landscape
    Boolean? default_orientation
    Boolean? trim
    Boolean? no_trim
    Boolean? default_trim
    Boolean? request_decimate
    Boolean? request_crop
    Boolean? request_fail
    Boolean? default_request
    Boolean? default_plut
    Boolean? identity
    Boolean? lin_od
    Boolean? plut
    Boolean? inverse_plut
    Boolean? illumination
    Boolean? reflection
    Boolean? copies
    Boolean? medium_type
    Boolean? destination
    Boolean? label
    Boolean? priority
    Boolean? owner
    Boolean? no_annotation
    Boolean? _annotation_ext
    Boolean? pd
    Boolean? pn
    Boolean? pl
    Boolean? _layout_ows
    Boolean? film_size
    Boolean? magnification
    Boolean? smoothing
    Boolean? config_info
    Boolean? resolution
    Boolean? border
    Boolean? empty_image
    Boolean? max_density
    Boolean? min_density
    Boolean? img_polarity
    Boolean? img_request_size
    Boolean? img_magnification
    Boolean? img_smoothing
    Boolean? img_config_info
    String dcm_file_in
  }
  command <<<
    dcmpsprt \
      ~{dcm_file_in} \
      ~{if (arguments) then "--arguments" else ""} \
      ~{if (_quiet_quiet) then "-q" else ""} \
      ~{if (_verbose_details) then "-v" else ""} \
      ~{if (_debug_information) then "-d" else ""} \
      ~{if (ll) then "-ll" else ""} \
      ~{if (lc) then "-lc" else ""} \
      ~{if (_config_stringprocess) then "-c" else ""} \
      ~{if (_printer_ame) then "-p" else ""} \
      ~{if (_spool_spool) then "-s" else ""} \
      ~{if (no_spool) then "--nospool" else ""} \
      ~{if (portrait) then "--portrait" else ""} \
      ~{if (landscape) then "--landscape" else ""} \
      ~{if (default_orientation) then "--default-orientation" else ""} \
      ~{if (trim) then "--trim" else ""} \
      ~{if (no_trim) then "--no-trim" else ""} \
      ~{if (default_trim) then "--default-trim" else ""} \
      ~{if (request_decimate) then "--request-decimate" else ""} \
      ~{if (request_crop) then "--request-crop" else ""} \
      ~{if (request_fail) then "--request-fail" else ""} \
      ~{if (default_request) then "--default-request" else ""} \
      ~{if (default_plut) then "--default-plut" else ""} \
      ~{if (identity) then "--identity" else ""} \
      ~{if (lin_od) then "--lin-od" else ""} \
      ~{if (plut) then "--plut" else ""} \
      ~{if (inverse_plut) then "--inverse-plut" else ""} \
      ~{if (illumination) then "--illumination" else ""} \
      ~{if (reflection) then "--reflection" else ""} \
      ~{if (copies) then "--copies" else ""} \
      ~{if (medium_type) then "--medium-type" else ""} \
      ~{if (destination) then "--destination" else ""} \
      ~{if (label) then "--label" else ""} \
      ~{if (priority) then "--priority" else ""} \
      ~{if (owner) then "--owner" else ""} \
      ~{if (no_annotation) then "--no-annotation" else ""} \
      ~{if (_annotation_ext) then "-a" else ""} \
      ~{if (pd) then "-pd" else ""} \
      ~{if (pn) then "-pn" else ""} \
      ~{if (pl) then "-pl" else ""} \
      ~{if (_layout_ows) then "-l" else ""} \
      ~{if (film_size) then "--filmsize" else ""} \
      ~{if (magnification) then "--magnification" else ""} \
      ~{if (smoothing) then "--smoothing" else ""} \
      ~{if (config_info) then "--configinfo" else ""} \
      ~{if (resolution) then "--resolution" else ""} \
      ~{if (border) then "--border" else ""} \
      ~{if (empty_image) then "--empty-image" else ""} \
      ~{if (max_density) then "--max-density" else ""} \
      ~{if (min_density) then "--min-density" else ""} \
      ~{if (img_polarity) then "--img-polarity" else ""} \
      ~{if (img_request_size) then "--img-request-size" else ""} \
      ~{if (img_magnification) then "--img-magnification" else ""} \
      ~{if (img_smoothing) then "--img-smoothing" else ""} \
      ~{if (img_config_info) then "--img-configinfo" else ""}
  >>>
  parameter_meta {
    arguments: "print expanded command line arguments"
    _quiet_quiet: "--quiet                quiet mode, print no warnings and errors"
    _verbose_details: "--verbose              verbose mode, print processing details"
    _debug_information: "--debug                debug mode, print debug information"
    ll: "--log-level            [l]evel: string constant\\n(fatal, error, warn, info, debug, trace)\\nuse level l for the logger"
    lc: "--log-config           [f]ilename: string\\nuse config file f for the logger"
    _config_stringprocess: "--config               [f]ilename: string\\nprocess using settings from configuration file f"
    _printer_ame: "--printer              [n]ame: string (default: 1st printer in cfg file)\\nselect printer with identifier n from cfg file"
    _spool_spool: "--spool                spool print job to DICOM printer"
    no_spool: "do not spool print job to DICOM printer (default)"
    portrait: "set portrait orientation"
    landscape: "set landscape orientation"
    default_orientation: "use printer default (default)"
    trim: "set trim on"
    no_trim: "set trim off"
    default_trim: "use printer default (default)"
    request_decimate: "request decimate"
    request_crop: "request crop"
    request_fail: "request failure"
    default_request: "use printer default (default)"
    default_plut: "do not create presentation LUT (default)"
    identity: "set IDENTITY presentation LUT shape"
    lin_od: "set LIN OD presentation LUT shape"
    plut: "[l]ut identifier: string\\nadd LUT [l] to print job"
    inverse_plut: "render the inverse presentation LUT into the\\nbitmap of the hardcopy grayscale image"
    illumination: "[v]alue: integer (0..65535)\\nset illumination to v (in cd/m^2)"
    reflection: "[v]alue: integer (0..65535)\\nset reflected ambient light to v (in cd/m^2)"
    copies: "[v]alue: integer (1..100, default: 1)\\nset number of copies to v"
    medium_type: "[v]alue: string\\nset medium type to v"
    destination: "[v]alue: string\\nset film destination to v"
    label: "[v]alue: string\\nset film session label to v"
    priority: "[v]alue: string\\nset print priority to v"
    owner: "[v]alue: string\\nset film session owner ID to v"
    no_annotation: "do not create annotation (default)"
    _annotation_ext: "--annotation           [t]ext: string\\ncreate annotation with text t"
    pd: "--print-no-date        do not prepend date/time to annotation"
    pn: "--print-no-name        do not prepend printer name to annotation"
    pl: "--print-no-lighting    do not prepend illumination to annotation"
    _layout_ows: "--layout               [c]olumns [r]ows: integer (default: 1 1)\\nuse 'STANDARD\\c,r' image display format"
    film_size: "[v]alue: string\\nset film size ID to v"
    magnification: "[v]alue: string\\nset magnification type to v"
    smoothing: "[v]alue: string\\nset smoothing type to v"
    config_info: "[v]alue: string\\nset configuration information to v"
    resolution: "[v]alue: string\\nset requested resolution ID to v"
    border: "[v]alue: string\\nset border density to v"
    empty_image: "[v]alue: string\\nset empty image density to v"
    max_density: "[v]alue: string\\nset max density to v"
    min_density: "[v]alue: string\\nset min density to v"
    img_polarity: "[v]alue: string\\nset image box polarity to v (NORMAL or REVERSE)"
    img_request_size: "[v]alue: string\\nset requested image size to v (width in mm)"
    img_magnification: "[v]alue: string\\nset image box magnification type to v"
    img_smoothing: "[v]alue: string\\nset image box smoothing type to v"
    img_config_info: "[v]alue: string\\nset image box configuration information to v\\n"
    dcm_file_in: "DICOM image file(s) to be printed"
  }
  output {
    File out_stdout = stdout()
  }
}