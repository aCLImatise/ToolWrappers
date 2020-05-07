class: CommandLineTool
id: dcmdrle.cwl
inputs:
- id: dcm_file_in
  doc: DICOM input filename to be converted
  type: string
  inputBinding:
    position: 0
- id: dcm_file_out
  doc: DICOM output filename
  type: string
  inputBinding:
    position: 1
- id: q
  doc: --quiet                quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: v
  doc: --verbose              verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: d
  doc: --debug                debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: ll
  doc: '--log-level            [l]evel: string constant (fatal, error, warn, info,
    debug, trace) use level l for the logger'
  type: boolean
  inputBinding:
    prefix: -ll
- id: lc
  doc: '--log-config           [f]ilename: string use config file f for the logger'
  type: boolean
  inputBinding:
    prefix: -lc
- id: f
  doc: --read-dataset         read data set without file meta information
  type: boolean
  inputBinding:
    prefix: -f
- id: f
  doc: --write-dataset        write data set without file meta information
  type: boolean
  inputBinding:
    prefix: -F
- id: u
  doc: --disable-new-vr       disable support for new VRs, convert to OB
  type: boolean
  inputBinding:
    prefix: -u
- id: g
  doc: --group-length-remove  always write without group length elements
  type: boolean
  inputBinding:
    prefix: -g
- id: e
  doc: --length-undefined     write with undefined lengths
  type: boolean
  inputBinding:
    prefix: -e
outputs: []
cwlVersion: v1.1
baseCommand:
- dcmdrle