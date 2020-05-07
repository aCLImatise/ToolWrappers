class: CommandLineTool
id: daligner.cwl
inputs:
- id: k
  doc: ': k-mer size (must be <= 32).'
  type: boolean
  inputBinding:
    prefix: -k
- id: w
  doc: ': Look for k-mers in averlapping bands of size 2^-w.'
  type: boolean
  inputBinding:
    prefix: -w
- id: t
  doc: ': Ignore k-mers that occur >= -t times in a block.'
  type: boolean
  inputBinding:
    prefix: -t
- id: m
  doc: ': Use only -M GB of memory by ignoring most frequent k-mers.'
  type: boolean
  inputBinding:
    prefix: -M
- id: e
  doc: ': Look for alignments with -e percent similarity.'
  type: boolean
  inputBinding:
    prefix: -e
- id: l
  doc: ': Look for alignments of length >= -l.'
  type: boolean
  inputBinding:
    prefix: -l
- id: s
  doc: ': The trace point spacing for encoding alignments.'
  type: boolean
  inputBinding:
    prefix: -s
- id: h
  doc: ': HGAP option: align only target reads of length >= -H.'
  type: boolean
  inputBinding:
    prefix: -H
- id: t
  doc: ': Use -T threads.'
  type: boolean
  inputBinding:
    prefix: -T
- id: p
  doc: ': Do block level sorts and merges in directory -P.'
  type: boolean
  inputBinding:
    prefix: -P
- id: m
  doc: ': Soft mask the blocks with the specified mask.'
  type: boolean
  inputBinding:
    prefix: -m
- id: b
  doc: ': For AT/GC biased data, compensate k-mer counts (deprecated).'
  type: boolean
  inputBinding:
    prefix: -b
- id: v
  doc: ': Verbose mode, output statistics as proceed.'
  type: boolean
  inputBinding:
    prefix: -v
- id: a
  doc: ': sort .las by A-read,A-position pairs for map usecase off => sort .las by
    A,B-read pairs for overlap piles'
  type: boolean
  inputBinding:
    prefix: -a
- id: a
  doc: ': Compare subjet to target, but not vice versa.'
  type: boolean
  inputBinding:
    prefix: -A
- id: i
  doc: ': Compare reads to themselves'
  type: boolean
  inputBinding:
    prefix: -I
outputs: []
cwlVersion: v1.1
baseCommand:
- daligner