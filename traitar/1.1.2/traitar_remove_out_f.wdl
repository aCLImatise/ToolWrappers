version 1.0

task TraitarRemoveOutF {
  input {
    Boolean? keep
    String trait_ar
    String remove
    String archive_f
    String phenotypes
    String out_f
  }
  command <<<
    traitar remove out_f \
      ~{trait_ar} \
      ~{remove} \
      ~{archive_f} \
      ~{phenotypes} \
      ~{out_f} \
      ~{true="--keep" false="" keep}
  >>>
  parameter_meta {
    keep: ""
    trait_ar: ""
    remove: ""
    archive_f: ""
    phenotypes: ""
    out_f: ""
  }
}