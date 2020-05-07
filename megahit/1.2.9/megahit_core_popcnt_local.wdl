version 1.0

task MegahitCorePopcntLocal {
  input {
    String cC
    String rR
    String oO
    String? localLocal
  }
  command <<<
    megahit_core_popcnt local \
      ~{localLocal} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}