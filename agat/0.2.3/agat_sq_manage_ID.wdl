version 1.0

task AgatSqManageID.pl {
  input {
    String inputInput
    Boolean ofOf
    String outputOutput
    String aA
    String asAs
    String theThe
    String aA
    String anAn
  }
  command <<<
    agat_sq_manage_ID.pl \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{true="--of" false="" ofOf} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}