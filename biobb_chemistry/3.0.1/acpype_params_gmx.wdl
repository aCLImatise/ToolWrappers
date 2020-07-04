version 1.0

task AcpypeParamsGmx {
  input {
    String? config
    String? input_path
    String? output_path_gro
    String? output_path_itp
    String? output_path_top
  }
  command <<<
    acpype_params_gmx \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(input_path) then ("--input_path " +  '"' + input_path + '"') else ""} \
      ~{if defined(output_path_gro) then ("--output_path_gro " +  '"' + output_path_gro + '"') else ""} \
      ~{if defined(output_path_itp) then ("--output_path_itp " +  '"' + output_path_itp + '"') else ""} \
      ~{if defined(output_path_top) then ("--output_path_top " +  '"' + output_path_top + '"') else ""}
  >>>
  parameter_meta {
    config: "Configuration file"
    input_path: "Path to the input file. Accepted formats: pdb, mdl, mol2."
    output_path_gro: "Path to the GRO output file. Accepted formats: gro."
    output_path_itp: "Path to the ITP output file. Accepted formats: itp."
    output_path_top: "Path to the TOP output file. Accepted formats: top."
  }
}