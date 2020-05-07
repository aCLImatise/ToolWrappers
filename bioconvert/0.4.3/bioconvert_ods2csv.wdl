version 1.0

task BioconvertOds2csv {
  input {
    Boolean forceForce
    String verbosityVerbosity
    Boolean raiseRaiseException
    Boolean batchBatch
    Boolean benchmarkBenchmark
    String benchmarkBenchmarkN
    Array[String]+ benchmarkBenchmarkMethods
    Boolean allowAllowIndirectConversion
    String extraExtraArguments
    Boolean mM
    Boolean showShowMethods
    String sheetSheetName
    String outOutSep
    String lineLineTerminator
    String? inputInputFile
    String? outputOutputFile
  }
  command <<<
    bioconvert ods2csv \
      ~{inputInputFile} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{true="--raise-exception" false="" raiseRaiseException} \
      ~{true="--batch" false="" batchBatch} \
      ~{true="--benchmark" false="" benchmarkBenchmark} \
      ~{if defined(benchmarkBenchmarkN) then ("--benchmark-N " +  '"' + benchmarkBenchmarkN + '"') else ""} \
      ~{if defined(benchmarkBenchmarkMethods) then ("--benchmark-methods " +  '"' + benchmarkBenchmarkMethods + '"') else ""} \
      ~{true="--allow-indirect-conversion" false="" allowAllowIndirectConversion} \
      ~{if defined(extraExtraArguments) then ("--extra-arguments " +  '"' + extraExtraArguments + '"') else ""} \
      ~{true="-m" false="" mM} \
      ~{true="--show-methods" false="" showShowMethods} \
      ~{if defined(sheetSheetName) then ("--sheet-name " +  '"' + sheetSheetName + '"') else ""} \
      ~{if defined(outOutSep) then ("--out-sep " +  '"' + outOutSep + '"') else ""} \
      ~{if defined(lineLineTerminator) then ("--line-terminator " +  '"' + lineLineTerminator + '"') else ""} \
      ~{outputOutputFile}
  >>>
}