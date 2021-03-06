version 1.0

task CovesSE {
  input {
    Boolean? show_pairs_watsoncrick
    Float? set_expected_default
    Boolean? mountain_representation_structural
    Boolean? secondary_structure_string
  }
  command <<<
    coves_SE \
      ~{if (show_pairs_watsoncrick) then "-a" else ""} \
      ~{if defined(set_expected_default) then ("-g " +  '"' + set_expected_default + '"') else ""} \
      ~{if (mountain_representation_structural) then "-m" else ""} \
      ~{if (secondary_structure_string) then "-s" else ""}
  >>>
  parameter_meta {
    show_pairs_watsoncrick: ": show all pairs, not just Watson-Crick"
    set_expected_default: ": set expected background GC composition (default 0.5)"
    mountain_representation_structural: ": mountain representation of structural alignment"
    secondary_structure_string: ": secondary structure string representation of\\nstructural alignment\\n"
  }
  output {
    File out_stdout = stdout()
  }
}