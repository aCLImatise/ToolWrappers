version 1.0

task Probabilistic2020Tsg {
  input {
    String inputInput
    String mutationsMutations
    String bedBed
    String processesProcesses
    String numNumIterations
    String contextContext
    String outputOutput
    String stopStopCriteria
    String deleteriousDeleterious
    Boolean uniqueUnique
    Boolean useUseUnmapped
    String genomeGenome
    String seedSeed
  }
  command <<<
    probabilistic2020 tsg \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(mutationsMutations) then ("--mutations " +  '"' + mutationsMutations + '"') else ""} \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(processesProcesses) then ("--processes " +  '"' + processesProcesses + '"') else ""} \
      ~{if defined(numNumIterations) then ("--num-iterations " +  '"' + numNumIterations + '"') else ""} \
      ~{if defined(contextContext) then ("--context " +  '"' + contextContext + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(stopStopCriteria) then ("--stop-criteria " +  '"' + stopStopCriteria + '"') else ""} \
      ~{if defined(deleteriousDeleterious) then ("--deleterious " +  '"' + deleteriousDeleterious + '"') else ""} \
      ~{true="--unique" false="" uniqueUnique} \
      ~{true="--use-unmapped" false="" useUseUnmapped} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""}
  >>>
}