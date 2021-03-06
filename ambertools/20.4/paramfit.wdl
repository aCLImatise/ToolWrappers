version 1.0

task Paramfit {
  input {
    File? job_control_file
    File? parameter_file_
    String? pf
    File? coordinate_file_location
    Int? cf
    String? list_quantum_only
    String? v
    Int? random_seed
  }
  command <<<
    paramfit \
      ~{if defined(job_control_file) then ("-i " +  '"' + job_control_file + '"') else ""} \
      ~{if defined(parameter_file_) then ("-p " +  '"' + parameter_file_ + '"') else ""} \
      ~{if defined(pf) then ("-pf " +  '"' + pf + '"') else ""} \
      ~{if defined(coordinate_file_location) then ("-c " +  '"' + coordinate_file_location + '"') else ""} \
      ~{if defined(cf) then ("-cf " +  '"' + cf + '"') else ""} \
      ~{if defined(list_quantum_only) then ("-q " +  '"' + list_quantum_only + '"') else ""} \
      ~{if defined(v) then ("-v " +  '"' + v + '"') else ""} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""}
  >>>
  parameter_meta {
    job_control_file: "Job control file location (mandatory)"
    parameter_file_: "Parameter file location --OR--"
    pf: "list     List of multiple parameter files to use, their K values"
    coordinate_file_location: "Coordinate file location --OR--"
    cf: "list      List of mdcrd files, number of structres, qm files location"
    list_quantum_only: "List of quantum energies (for single fits only)"
    v: ""
    random_seed: "(for debugging only, no default value)"
  }
  output {
    File out_stdout = stdout()
  }
}