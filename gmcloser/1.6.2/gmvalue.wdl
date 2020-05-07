version 1.0

task Gmvalue.utlScaf {
  input {
    String queryQuery
    String refRef
    String minMinId
    String minMinCov
    String minMinAlign
    String minMinLen
    String prefixPrefix
    String errorErrorCorrect
    String nucNucLen
    String minMinGap
    String maxMaxGap
    String maxMaxInDel
    String threadThread
  }
  command <<<
    gmvalue.utl scaf \
      ~{if defined(queryQuery) then ("--query " +  '"' + queryQuery + '"') else ""} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(minMinId) then ("--min_id " +  '"' + minMinId + '"') else ""} \
      ~{if defined(minMinCov) then ("--min_cov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(minMinAlign) then ("--min_align " +  '"' + minMinAlign + '"') else ""} \
      ~{if defined(minMinLen) then ("--min_len " +  '"' + minMinLen + '"') else ""} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(errorErrorCorrect) then ("--error_correct " +  '"' + errorErrorCorrect + '"') else ""} \
      ~{if defined(nucNucLen) then ("--nuc_len " +  '"' + nucNucLen + '"') else ""} \
      ~{if defined(minMinGap) then ("--min_gap " +  '"' + minMinGap + '"') else ""} \
      ~{if defined(maxMaxGap) then ("--max_gap " +  '"' + maxMaxGap + '"') else ""} \
      ~{if defined(maxMaxInDel) then ("--max_indel " +  '"' + maxMaxInDel + '"') else ""} \
      ~{if defined(threadThread) then ("--thread " +  '"' + threadThread + '"') else ""}
  >>>
}