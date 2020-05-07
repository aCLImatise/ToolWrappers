version 1.0

task MegahitToolkitCount {
  input {
    String kmKmErK
    String minMinKmErFrequency
    String hostHostMem
    String numNumCpuThreads
    String readReadLibFile
    String outputOutputPrefix
    String memMemFlag
    String? sSDbgBuilder
    String? countCount
  }
  command <<<
    megahit_toolkit count \
      ~{sSDbgBuilder} \
      ~{if defined(kmKmErK) then ("--kmer_k " +  '"' + kmKmErK + '"') else ""} \
      ~{if defined(minMinKmErFrequency) then ("--min_kmer_frequency " +  '"' + minMinKmErFrequency + '"') else ""} \
      ~{if defined(hostHostMem) then ("--host_mem " +  '"' + hostHostMem + '"') else ""} \
      ~{if defined(numNumCpuThreads) then ("--num_cpu_threads " +  '"' + numNumCpuThreads + '"') else ""} \
      ~{if defined(readReadLibFile) then ("--read_lib_file " +  '"' + readReadLibFile + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output_prefix " +  '"' + outputOutputPrefix + '"') else ""} \
      ~{if defined(memMemFlag) then ("--mem_flag " +  '"' + memMemFlag + '"') else ""} \
      ~{countCount}
  >>>
}