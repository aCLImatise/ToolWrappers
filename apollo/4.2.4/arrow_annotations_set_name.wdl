version 1.0

task ArrowAnnotationsSetName {
  input {
    String? organism
    String? sequence
    String feature_id
    String name
  }
  command <<<
    arrow annotations set_name \
      ~{feature_id} \
      ~{name} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""}
  >>>
  parameter_meta {
    organism: "Organism Common Name"
    sequence: "Sequence Name"
    feature_id: ""
    name: ""
  }
  output {
    File out_stdout = stdout()
  }
}