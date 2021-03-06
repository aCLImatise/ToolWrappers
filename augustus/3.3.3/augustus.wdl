version 1.0

task Augustus {
  input {
    String? strand
    String? gene_model
    String? single_strand
    File? hints_file
    File? augustus_config_path
    String? alternatives_from_evidence
    String? alternatives_from_sampling
    String? sample
    String? min_exon_intron_prob
    String? min_mean_exon_intron_prob
    Int? max_tracks
    File? protein_profile
    String? progress
    Int? gff_three
    String? prediction_start
    String? utr
    String? no_in_frames_top
    String? no_prediction
    String? unique_geneid
    String? species
    String? parameters
    String query_filename
  }
  command <<<
    augustus \
      ~{parameters} \
      ~{query_filename} \
      ~{if defined(strand) then ("--strand " +  '"' + strand + '"') else ""} \
      ~{if defined(gene_model) then ("--genemodel " +  '"' + gene_model + '"') else ""} \
      ~{if defined(single_strand) then ("--singlestrand " +  '"' + single_strand + '"') else ""} \
      ~{if defined(hints_file) then ("--hintsfile " +  '"' + hints_file + '"') else ""} \
      ~{if defined(augustus_config_path) then ("--AUGUSTUS_CONFIG_PATH " +  '"' + augustus_config_path + '"') else ""} \
      ~{if defined(alternatives_from_evidence) then ("--alternatives-from-evidence " +  '"' + alternatives_from_evidence + '"') else ""} \
      ~{if defined(alternatives_from_sampling) then ("--alternatives-from-sampling " +  '"' + alternatives_from_sampling + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(min_exon_intron_prob) then ("--minexonintronprob " +  '"' + min_exon_intron_prob + '"') else ""} \
      ~{if defined(min_mean_exon_intron_prob) then ("--minmeanexonintronprob " +  '"' + min_mean_exon_intron_prob + '"') else ""} \
      ~{if defined(max_tracks) then ("--maxtracks " +  '"' + max_tracks + '"') else ""} \
      ~{if defined(protein_profile) then ("--proteinprofile " +  '"' + protein_profile + '"') else ""} \
      ~{if defined(progress) then ("--progress " +  '"' + progress + '"') else ""} \
      ~{if defined(gff_three) then ("--gff3 " +  '"' + gff_three + '"') else ""} \
      ~{if defined(prediction_start) then ("--predictionStart " +  '"' + prediction_start + '"') else ""} \
      ~{if defined(utr) then ("--UTR " +  '"' + utr + '"') else ""} \
      ~{if defined(no_in_frames_top) then ("--noInFrameStop " +  '"' + no_in_frames_top + '"') else ""} \
      ~{if defined(no_prediction) then ("--noprediction " +  '"' + no_prediction + '"') else ""} \
      ~{if defined(unique_geneid) then ("--uniqueGeneId " +  '"' + unique_geneid + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""}
  >>>
  parameter_meta {
    strand: "or --strand=backward"
    gene_model: "or --genemodel=exactlyone\\npartial      : allow prediction of incomplete genes at the sequence boundaries (default)\\nintronless   : only predict single-exon genes like in prokaryotes and some eukaryotes\\ncomplete     : only predict complete genes\\natleastone   : predict at least one complete gene\\nexactlyone   : predict exactly one complete gene"
    single_strand: "predict genes independently on each strand, allow overlapping genes on opposite strands\\nThis option is turned off by default."
    hints_file: "When this option is used the prediction considering hints (extrinsic information) is turned on.\\nhintsfilename contains the hints in gff format."
    augustus_config_path: "path to config directory (if not specified as environment variable)"
    alternatives_from_evidence: "report alternative transcripts when they are suggested by hints"
    alternatives_from_sampling: "report alternative transcripts generated through probabilistic sampling"
    sample: ""
    min_exon_intron_prob: ""
    min_mean_exon_intron_prob: ""
    max_tracks: "For a description of these parameters see section 4 of README.TXT."
    protein_profile: "When this option is used the prediction will consider the protein profile provided as parameter.\\nThe protein profile extension is described in section 7 of README.TXT."
    progress: "show a progressmeter"
    gff_three: "output in gff3 format"
    prediction_start: "A and B define the range of the sequence for which predictions should be found."
    utr: "predict the untranslated regions in addition to the coding sequence. This currently works only for a subset of species."
    no_in_frames_top: "Do not report transcripts with in-frame stop codons. Otherwise, intron-spanning stop codons could occur. Default: false"
    no_prediction: "If true and input is in genbank format, no prediction is made. Useful for getting the annotated protein sequences."
    unique_geneid: "If true, output gene identifyers like this: seqname.gN"
    species: ""
    parameters: ""
    query_filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}