version 1.0

task CalcExpectedAccuracyFromFastq.py {
  input {
    String? qv_trim_five
    String? qv_trim_three
    String fast_q_filename
    String output_filename
  }
  command <<<
    calc_expected_accuracy_from_fastq.py \
      ~{fast_q_filename} \
      ~{output_filename} \
      ~{if defined(qv_trim_five) then ("--qv_trim_5 " +  '"' + qv_trim_five + '"') else ""} \
      ~{if defined(qv_trim_three) then ("--qv_trim_3 " +  '"' + qv_trim_three + '"') else ""}
  >>>
  parameter_meta {
    qv_trim_five: "Ignore length on 5' for QV calculation (default: 100 bp)"
    qv_trim_three: "Ignore length on 3' for QV calculation (default: 30 bp)"
    fast_q_filename: "FASTQ filename (ex: lq_isoforms.fastq"
    output_filename: "Output FASTQ filename"
  }
}