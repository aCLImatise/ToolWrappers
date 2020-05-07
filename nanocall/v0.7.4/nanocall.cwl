class: CommandLineTool
id: nanocall.cwl
inputs:
- id: nano_call
  doc: '[-t <int>] [-o <file>] [--write-fast5] [--pore <r73|r9>] [-m <strand:file>]
    ...  [--model-fofn <file>] [-s <file>] [--pr-stay <float>] [--pr-skip <float>]
    [--no-basecall] [--basecall] [--no-train] [--train] [--no-train-scaling] [--no-train-transitions]
    [--double-strand-scaling] [--single-strand-scaling] [--1d] [--scaling-num-events
    <int>] [--scaling-max-rounds <int>] [--scaling-min-progress <float>] [--scaling-select-threshold
    <float>] [--fasta-line-width <int>] [--min-ed-events <int>] [--max-ed-events <int>]
    [--trim-ed-sq-start <int>] [--trim-ed-sq-end <int>] [--trim-ed-hp-start <int>]
    [--trim-ed-hp-end <int>] [--train-drift <0|1>] [--stats <file>] [--log <string>]
    ...  [--chunk-size <int>] [--ed-group <000|001|...>] [--] [--version] [-h] <path>
    ...'
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- nanocall