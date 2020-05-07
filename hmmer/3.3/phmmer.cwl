class: CommandLineTool
id: phmmer.cwl
inputs:
- id: o
  doc: ': direct output to file <f>, not stdout'
  type: string
  inputBinding:
    prefix: -o
- id: a
  doc: ': save multiple alignment of hits to file <f>'
  type: string
  inputBinding:
    prefix: -A
- id: tbl_out
  doc: ': save parseable table of per-sequence hits to file <f>'
  type: string
  inputBinding:
    prefix: --tblout
- id: dom_tbl_out
  doc: ': save parseable table of per-domain hits to file <f>'
  type: string
  inputBinding:
    prefix: --domtblout
- id: pfam_tbl_out
  doc: ': save table of hits and domains to file, in Pfam format <f>'
  type: string
  inputBinding:
    prefix: --pfamtblout
- id: acc
  doc: ': prefer accessions over names in output'
  type: boolean
  inputBinding:
    prefix: --acc
- id: no_ali
  doc: ": don't output alignments, so output is smaller"
  type: boolean
  inputBinding:
    prefix: --noali
- id: no_text_w
  doc: ': unlimit ASCII text output line width'
  type: boolean
  inputBinding:
    prefix: --notextw
- id: text_w
  doc: ': set max width of ASCII text output lines  [120]  (n>=120)'
  type: string
  inputBinding:
    prefix: --textw
- id: popen
  doc: ': gap open probability'
  type: string
  inputBinding:
    prefix: --popen
- id: p_extend
  doc: ': gap extend probability'
  type: string
  inputBinding:
    prefix: --pextend
- id: mx
  doc: ': substitution score matrix choice (of some built-in matrices)'
  type: string
  inputBinding:
    prefix: --mx
- id: mx_file
  doc: ': read substitution score matrix from file <f>'
  type: string
  inputBinding:
    prefix: --mxfile
- id: e
  doc: ': report sequences <= this E-value threshold in output  [10.0]  (x>0)'
  type: string
  inputBinding:
    prefix: -E
- id: t
  doc: ': report sequences >= this score threshold in output'
  type: string
  inputBinding:
    prefix: -T
- id: dome
  doc: ': report domains <= this E-value threshold in output  [10.0]  (x>0)'
  type: string
  inputBinding:
    prefix: --domE
- id: do_mt
  doc: ': report domains >= this score cutoff in output'
  type: string
  inputBinding:
    prefix: --domT
- id: ince
  doc: ': consider sequences <= this E-value threshold as significant'
  type: string
  inputBinding:
    prefix: --incE
- id: in_ct
  doc: ': consider sequences >= this score threshold as significant'
  type: string
  inputBinding:
    prefix: --incT
- id: inc_dome
  doc: ': consider domains <= this E-value threshold as significant'
  type: string
  inputBinding:
    prefix: --incdomE
- id: inc_do_mt
  doc: ': consider domains >= this score threshold as significant'
  type: string
  inputBinding:
    prefix: --incdomT
- id: max
  doc: ': Turn all heuristic filters off (less speed, more power)'
  type: boolean
  inputBinding:
    prefix: --max
- id: f1
  doc: ': Stage 1 (MSV) threshold: promote hits w/ P <= F1  [0.02]'
  type: string
  inputBinding:
    prefix: --F1
- id: f2
  doc: ': Stage 2 (Vit) threshold: promote hits w/ P <= F2  [1e-3]'
  type: string
  inputBinding:
    prefix: --F2
- id: f3
  doc: ': Stage 3 (Fwd) threshold: promote hits w/ P <= F3  [1e-5]'
  type: string
  inputBinding:
    prefix: --F3
- id: no_bias
  doc: ': turn off composition bias filter'
  type: boolean
  inputBinding:
    prefix: --nobias
- id: eml
  doc: ': length of sequences for MSV Gumbel mu fit  [200]  (n>0)'
  type: string
  inputBinding:
    prefix: --EmL
- id: emn
  doc: ': number of sequences for MSV Gumbel mu fit  [200]  (n>0)'
  type: string
  inputBinding:
    prefix: --EmN
- id: evl
  doc: ': length of sequences for Viterbi Gumbel mu fit  [200]  (n>0)'
  type: string
  inputBinding:
    prefix: --EvL
- id: evn
  doc: ': number of sequences for Viterbi Gumbel mu fit  [200]  (n>0)'
  type: string
  inputBinding:
    prefix: --EvN
- id: efl
  doc: ': length of sequences for Forward exp tail tau fit  [100]  (n>0)'
  type: string
  inputBinding:
    prefix: --EfL
- id: efn
  doc: ': number of sequences for Forward exp tail tau fit  [200]  (n>0)'
  type: string
  inputBinding:
    prefix: --EfN
- id: eft
  doc: ': tail mass for Forward exponential tail tau fit  [0.04]  (0<x<1)'
  type: string
  inputBinding:
    prefix: --Eft
- id: nonull2
  doc: ': turn off biased composition score corrections'
  type: boolean
  inputBinding:
    prefix: --nonull2
- id: z
  doc: ': set # of comparisons done, for E-value calculation'
  type: string
  inputBinding:
    prefix: -Z
- id: do_mz
  doc: ': set # of significant seqs, for domain E-value calculation'
  type: string
  inputBinding:
    prefix: --domZ
- id: seed
  doc: ': set RNG seed to <n> (if 0: one-time arbitrary seed)  [42]'
  type: string
  inputBinding:
    prefix: --seed
- id: q_format
  doc: ': assert query <seqfile> is in format <s>: no autodetection'
  type: string
  inputBinding:
    prefix: --qformat
- id: t_format
  doc: ': assert target <seqdb> is in format <s>>: no autodetection'
  type: string
  inputBinding:
    prefix: --tformat
- id: cpu
  doc: ': number of parallel CPU workers to use for multithreads  [2]'
  type: string
  inputBinding:
    prefix: --cpu
outputs: []
cwlVersion: v1.1
baseCommand:
- phmmer