version 1.0

task Mdpocket {
  input {
    String? trajectory_format
    File? pdb_file
    String? selected_pocket
    File? topology_file
    String? topology_format
    String? flag_perform_calculations
    String? output_prefix
    Boolean? drug_g_ability_score
    String netcdf
    String dcd
  }
  command <<<
    mdpocket \
      ~{netcdf} \
      ~{dcd} \
      ~{if defined(trajectory_format) then ("--trajectory_format " +  '"' + trajectory_format + '"') else ""} \
      ~{if defined(pdb_file) then ("-f " +  '"' + pdb_file + '"') else ""} \
      ~{if defined(selected_pocket) then ("--selected_pocket " +  '"' + selected_pocket + '"') else ""} \
      ~{if defined(topology_file) then ("--topology_file " +  '"' + topology_file + '"') else ""} \
      ~{if defined(topology_format) then ("--topology_format " +  '"' + topology_format + '"') else ""} \
      ~{if defined(flag_perform_calculations) then ("-x " +  '"' + flag_perform_calculations + '"') else ""} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if (drug_g_ability_score) then "--druggability_score" else ""}
  >>>
  parameter_meta {
    trajectory_format: "format"
    pdb_file: "PDB file"
    selected_pocket: ""
    topology_file: ""
    topology_format: "(currently only prmtop is supported)"
    flag_perform_calculations: "this flag to perform interaction energy grid calculations"
    output_prefix: ": specify the prefix of all output files here"
    drug_g_ability_score: ": put this flag to score pockets by druggability"
    netcdf: "(netcdf)         "
    dcd: "(dcd)        "
  }
  output {
    File out_stdout = stdout()
  }
}