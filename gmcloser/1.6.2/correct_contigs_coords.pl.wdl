version 1.0

task CorrectContigsCoordspl {
  input {
    File? query
    File? ref
    File? align
    Int? min_id
    Int? min_cov
    Int? min_align
    Int? min_len
    String? prefix_name_outputs
    String? error_correct
    Int? max_in_del
    Int? thread
    String? var_11
    String gm_value
    String var_input
    String minimum
    Int number
    String var_output
    String var_17
    String alignment
    String an
    String contig
    String coords
    String coverage
    String var_23
    String name
    String reference
    String verdot
    String error_corrected
    String fast_a
    String identity
    String overlap
    String threads
    File file
    String from
    Int length
    String to
    String nuc_mer
    String be
    String run
    String set
    String with
    String considered
    String outputs
    String the
    String maximum
    String allowable
    Int size
    String of
    String indels
  }
  command <<<
    correct_contigs_coords_pl \
      ~{gm_value} \
      ~{var_input} \
      ~{minimum} \
      ~{number} \
      ~{var_output} \
      ~{var_17} \
      ~{alignment} \
      ~{an} \
      ~{contig} \
      ~{coords} \
      ~{coverage} \
      ~{var_23} \
      ~{name} \
      ~{reference} \
      ~{verdot} \
      ~{error_corrected} \
      ~{fast_a} \
      ~{identity} \
      ~{overlap} \
      ~{threads} \
      ~{file} \
      ~{from} \
      ~{length} \
      ~{to} \
      ~{nuc_mer} \
      ~{be} \
      ~{run} \
      ~{set} \
      ~{with} \
      ~{considered} \
      ~{outputs} \
      ~{the} \
      ~{maximum} \
      ~{allowable} \
      ~{size} \
      ~{of} \
      ~{indels} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(align) then ("--align " +  '"' + align + '"') else ""} \
      ~{if defined(min_id) then ("--min_id " +  '"' + min_id + '"') else ""} \
      ~{if defined(min_cov) then ("--min_cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(min_align) then ("--min_align " +  '"' + min_align + '"') else ""} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""} \
      ~{if defined(prefix_name_outputs) then ("--prefix " +  '"' + prefix_name_outputs + '"') else ""} \
      ~{if defined(error_correct) then ("--error_correct " +  '"' + error_correct + '"') else ""} \
      ~{if defined(max_in_del) then ("--max_indel " +  '"' + max_in_del + '"') else ""} \
      ~{if defined(thread) then ("--thread " +  '"' + thread + '"') else ""} \
      ~{if defined(var_11) then ("--help " +  '"' + var_11 + '"') else ""}
  >>>
  parameter_meta {
    query: "input contig fasta file (e.g., contig1.fa)"
    ref: "input reference file (e.g., ref.fa)"
    align: "input coords file from Nucmer outputs (e.g., align.coords)"
    min_id: "minimum alignment identity (%) [default: 97]"
    min_cov: "minimum coverage (%) of query (contig) aligned to a reference [default: 99]"
    min_align: "minimum alignment overlap length with the maximum allowable size of indels [default: 200]"
    min_len: "minimum contig length to be considered [default: 200]"
    prefix_name_outputs: "prefix name of outputs"
    error_correct: "output an error-corrected contig set [default: false]"
    max_in_del: "maximum allowable size of indels (or distance between break points) [default: 100]"
    thread: "number of threads to run [default: 1]"
    var_11: ""
    gm_value: ""
    var_input: ""
    minimum: ""
    number: ""
    var_output: ""
    var_17: ""
    alignment: ""
    an: ""
    contig: ""
    coords: ""
    coverage: ""
    var_23: ""
    name: ""
    reference: ""
    verdot: ""
    error_corrected: ""
    fast_a: ""
    identity: ""
    overlap: ""
    threads: ""
    file: ""
    from: ""
    length: ""
    to: ""
    nuc_mer: ""
    be: ""
    run: ""
    set: ""
    with: ""
    considered: ""
    outputs: ""
    the: ""
    maximum: ""
    allowable: ""
    size: ""
    of: ""
    indels: ""
  }
  output {
    File out_stdout = stdout()
  }
}