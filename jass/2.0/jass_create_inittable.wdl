version 1.0

task JassCreateinittable {
  input {
    File? in_it_covariance_path
    File? regions_map_path
    File? description_file_path
    File? input_data_path
    File? in_it_table_path
  }
  command <<<
    jass create_inittable \
      ~{if defined(in_it_covariance_path) then ("--init-covariance-path " +  '"' + in_it_covariance_path + '"') else ""} \
      ~{if defined(regions_map_path) then ("--regions-map-path " +  '"' + regions_map_path + '"') else ""} \
      ~{if defined(description_file_path) then ("--description-file-path " +  '"' + description_file_path + '"') else ""} \
      ~{if defined(input_data_path) then ("--input-data-path " +  '"' + input_data_path + '"') else ""} \
      ~{if defined(in_it_table_path) then ("--init-table-path " +  '"' + in_it_table_path + '"') else ""}
  >>>
  parameter_meta {
    in_it_covariance_path: ""
    regions_map_path: ""
    description_file_path: ""
    input_data_path: "path to the GWAS data file (ImpG format) to import.\\nthe path must be specify between quotes"
    in_it_table_path: "path to the initial data file to produce, default is\\nthe configured path (JASS_DATA_DIR/initTable.hdf5)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}