version 1.0

task FunannotateTrain {
  input {
    Boolean? genome_multifasta_file
    Directory? out
    Boolean? leftforward_fastq_illumina
    Boolean? rightreverse_fastq_illumina
    Boolean? single
    Boolean? stranded
    Boolean? left_norm
    Boolean? right_norm
    Boolean? single_norm
    Boolean? pac_bio_iso_seq
    Boolean? nano_pore_cdna
    Boolean? nano_pore_mrna
    Boolean? trinity
    Boolean? jaccard_clip
    Boolean? no_normalize_reads
    Boolean? no_trim_mo_matic
    Boolean? memory
    Boolean? coverage
    Boolean? min_coverage
    Boolean? pasa_db
    Float? stringent_alignment_overlap_dot
    Boolean? aligners
    Boolean? max_intron_len
    Boolean? species
    Boolean? strain
    Boolean? isolate
    Boolean? cpus
    Boolean? pasa_home
    Boolean? trinity_home
    String arguments
  }
  command <<<
    funannotate train \
      ~{arguments} \
      ~{if (genome_multifasta_file) then "--input" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (leftforward_fastq_illumina) then "--left" else ""} \
      ~{if (rightreverse_fastq_illumina) then "--right" else ""} \
      ~{if (single) then "--single" else ""} \
      ~{if (stranded) then "--stranded" else ""} \
      ~{if (left_norm) then "--left_norm" else ""} \
      ~{if (right_norm) then "--right_norm" else ""} \
      ~{if (single_norm) then "--single_norm" else ""} \
      ~{if (pac_bio_iso_seq) then "--pacbio_isoseq" else ""} \
      ~{if (nano_pore_cdna) then "--nanopore_cdna" else ""} \
      ~{if (nano_pore_mrna) then "--nanopore_mrna" else ""} \
      ~{if (trinity) then "--trinity" else ""} \
      ~{if (jaccard_clip) then "--jaccard_clip" else ""} \
      ~{if (no_normalize_reads) then "--no_normalize_reads" else ""} \
      ~{if (no_trim_mo_matic) then "--no_trimmomatic" else ""} \
      ~{if (memory) then "--memory" else ""} \
      ~{if (coverage) then "--coverage" else ""} \
      ~{if (min_coverage) then "--min_coverage" else ""} \
      ~{if (pasa_db) then "--pasa_db" else ""} \
      ~{if defined(stringent_alignment_overlap_dot) then ("--stringent_alignment_overlap. " +  '"' + stringent_alignment_overlap_dot + '"') else ""} \
      ~{if (aligners) then "--aligners" else ""} \
      ~{if (max_intron_len) then "--max_intronlen" else ""} \
      ~{if (species) then "--species" else ""} \
      ~{if (strain) then "--strain" else ""} \
      ~{if (isolate) then "--isolate" else ""} \
      ~{if (cpus) then "--cpus" else ""} \
      ~{if (pasa_home) then "--PASAHOME" else ""} \
      ~{if (trinity_home) then "--TRINITYHOME" else ""}
  >>>
  parameter_meta {
    genome_multifasta_file: "Genome multi-fasta file"
    out: "Output folder name"
    leftforward_fastq_illumina: "Left/Forward FASTQ Illumina reads (R1)"
    rightreverse_fastq_illumina: "Right/Reverse FASTQ Illumina reads (R2)"
    single: "Single ended FASTQ reads"
    stranded: "If RNA-seq library stranded. [RF,FR,F,R,no]"
    left_norm: "Normalized left FASTQ reads (R1)"
    right_norm: "Normalized right FASTQ reads (R2)"
    single_norm: "Normalized single-ended FASTQ reads"
    pac_bio_iso_seq: "PacBio long-reads"
    nano_pore_cdna: "Nanopore cDNA long-reads"
    nano_pore_mrna: "Nanopore mRNA direct long-reads"
    trinity: "Pre-computed Trinity transcripts (FASTA)"
    jaccard_clip: "Turn on jaccard clip for dense genomes [Recommended for fungi]"
    no_normalize_reads: "Skip read Normalization"
    no_trim_mo_matic: "Skip Quality Trimming of reads"
    memory: "RAM to use for Jellyfish. Default: 50G"
    coverage: "Depth to normalize reads. Default: 50"
    min_coverage: "Min depth for normalizing reads. Default: 5"
    pasa_db: "Database to use. Default: sqlite [mysql,sqlite]"
    stringent_alignment_overlap_dot: ": 30.0"
    aligners: "Aligners to use with PASA: Default: minimap2 blat [gmap]"
    max_intron_len: "Maximum intron length. Default: 3000"
    species: "Species name, use quotes for binomial, e.g. \\\"Aspergillus fumigatus\\\""
    strain: "Strain name"
    isolate: "Isolate name"
    cpus: "Number of CPUs to use. Default: 2"
    pasa_home: ""
    trinity_home: ""
    arguments: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}