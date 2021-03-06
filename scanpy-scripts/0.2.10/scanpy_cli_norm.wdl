version 1.0

task ScanpycliNorm {
  input {
    Boolean? input_format
    Boolean? output_format
    Int? zarr_chunk_size
    File? export_mtx
    Boolean? show_obj
    Boolean? save_raw
    Boolean? no_log_transform
    Float? normalize_to
    Float? fraction
    String format_dot
  }
  command <<<
    scanpy_cli norm \
      ~{format_dot} \
      ~{if (input_format) then "--input-format" else ""} \
      ~{if (output_format) then "--output-format" else ""} \
      ~{if defined(zarr_chunk_size) then ("--zarr-chunk-size " +  '"' + zarr_chunk_size + '"') else ""} \
      ~{if defined(export_mtx) then ("--export-mtx " +  '"' + export_mtx + '"') else ""} \
      ~{if (show_obj) then "--show-obj" else ""} \
      ~{if (save_raw) then "--save-raw" else ""} \
      ~{if (no_log_transform) then "--no-log-transform" else ""} \
      ~{if defined(normalize_to) then ("--normalize-to " +  '"' + normalize_to + '"') else ""} \
      ~{if defined(fraction) then ("--fraction " +  '"' + fraction + '"') else ""}
  >>>
  parameter_meta {
    input_format: "[anndata|loom]\\nInput object format.  [default: anndata]"
    output_format: "[anndata|loom|zarr]\\nOutput object format.  [default: anndata]"
    zarr_chunk_size: "Chunk size for writing output in zarr"
    export_mtx: "When specified, using it as prefix for\\nexporting mtx files. If not empty and not\\nending with \\\"/\\\" or \\\"_\\\", a \\\"_\\\" will be\\nappended."
    show_obj: "[stdout|stderr]      Print output object summary info to\\nspecified stream."
    save_raw: "[yes|no|counts]  Save raw data existing raw data.  [default:\\nyes]"
    no_log_transform: "When set, do not apply (natural) log\\ntransform following normalisation.\\n[default: True]"
    normalize_to: "Normalize per cell nUMI to this number.\\n[default: 10000]"
    fraction: "Only use genes that make up less than this\\nfraction of the total count in every cell.\\nSo only these genes will sum up to the\\nnumber specified by --normalize-to.\\n[default: 0.9]"
    format_dot: "[default: 1000]"
  }
  output {
    File out_stdout = stdout()
  }
}