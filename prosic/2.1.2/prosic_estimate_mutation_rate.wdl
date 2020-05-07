version 1.0

task ProsicEstimateMutationRate {
  input {
    File fitFit
    Float maxMaxAf
    Float minMinAf
    String? optionsOptions
  }
  command <<<
    prosic estimate-mutation-rate \
      ~{optionsOptions} \
      ~{if defined(fitFit) then ("--fit " +  '"' + fitFit + '"') else ""} \
      ~{if defined(maxMaxAf) then ("--max-af " +  '"' + maxMaxAf + '"') else ""} \
      ~{if defined(minMinAf) then ("--min-af " +  '"' + minMinAf + '"') else ""}
  >>>
}