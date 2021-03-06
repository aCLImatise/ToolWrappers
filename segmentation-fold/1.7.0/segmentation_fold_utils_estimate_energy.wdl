version 1.0

task SegmentationfoldutilsEstimateenergy {
  input {
    File? temp_dir
    String? location_segmentatiofold_binarydefault
    File? xml_file
    Int? threads
    Int? randomize
    File? sequences_from_fast_a_file
    String _precision_float
  }
  command <<<
    segmentation_fold_utils estimate_energy \
      ~{_precision_float} \
      ~{if defined(temp_dir) then ("--temp-dir " +  '"' + temp_dir + '"') else ""} \
      ~{if defined(location_segmentatiofold_binarydefault) then ("--segmentation-fold " +  '"' + location_segmentatiofold_binarydefault + '"') else ""} \
      ~{if defined(xml_file) then ("--xml-file " +  '"' + xml_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(randomize) then ("--randomize " +  '"' + randomize + '"') else ""} \
      ~{if defined(sequences_from_fast_a_file) then ("--sequences-from-fasta-file " +  '"' + sequences_from_fast_a_file + '"') else ""}
  >>>
  parameter_meta {
    temp_dir: "Ppath in which temporary conifig files will\\nbe stored (default: /tmp)"
    location_segmentatiofold_binarydefault: "Location of segmentatio-fold binary\\n(default: segmentation-fold)"
    xml_file: "Location of segments.xml (default:\\n/usr/local/share/segmentation-\\nfold/segments.xml)"
    threads: "Number of threads per spawned instance of"
    randomize: "Shuffle each sequence this many times and\\npredict energy of shuffled sequence(s)\\n(default: 0, 0 means disabled)"
    sequences_from_fast_a_file: "Use sequences from a FASTA file instead of\\nusing the XML file that also contains the\\nsegments. In XML files you can explicitly\\nlink one Segment(Loop) to one particular\\nsequence instead of doing n*n comparisons\\n(default: None)"
    _precision_float: "-p, --precision FLOAT           Minimal difference for binary split - the"
  }
  output {
    File out_stdout = stdout()
  }
}