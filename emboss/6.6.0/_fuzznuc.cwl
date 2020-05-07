class: CommandLineTool
id: _fuzznuc.cwl
inputs:
- id: pattern
  doc: "pattern    The standard IUPAC one-letter codes for the nucleotides are used.\
    \ The symbol 'n' is used for a position where any nucleotide is accepted. Ambiguities\
    \ are indicated by listing the acceptable nucleotides for a given position, between\
    \ square parentheses '[ ]'. For example: [ACG] stands for A or C or G. Ambiguities\
    \ are also indicated by listing between a pair of curly brackets '{ }' the nucleotides\
    \ that are not accepted at a given position. For example: {AG} stands for any\
    \ nucleotides except A and G. Each element in a pattern is separated from its\
    \ neighbor by a '-'. (Optional in fuzznuc). Repetition of an element of the pattern\
    \ can be indicated by following that element with a numerical value or a numerical\
    \ range between parenthesis. Examples: N(3) corresponds to N-N-N, N(2,4) corresponds\
    \ to N-N or N-N-N or N-N-N-N. When a pattern is restricted to either the 5' or\
    \ 3' end of a sequence, that pattern either starts with a '<' symbol or respectively\
    \ ends with a '>' symbol. A period ends the pattern. (Optional in fuzznuc). For\
    \ example, [CG](5)TG{A}N(1,5)C"
  type: boolean
  inputBinding:
    prefix: -pattern
- id: r_format
  doc: )
  type: string
  inputBinding:
    prefix: -rformat
outputs: []
cwlVersion: v1.1
baseCommand:
- _fuzznuc