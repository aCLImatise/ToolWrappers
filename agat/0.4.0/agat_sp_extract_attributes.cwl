class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/agat_sp_extract_attributes.pl.cwl
inputs:
- id: gff
  doc: Input GTF/GFF file.
  type: string
  inputBinding:
    prefix: --gff
- id: primary_tag_option
  doc: 'primary tag option, case insensitive, list. Allow to specied the feature types
    that will be handled. You can specified a specific feature by given its primary
    tag name (column 3) as: cds, Gene, MrNa You can specify directly all the feature
    of a particular level: level2=mRNA,ncRNA,tRNA,etc level3=CDS,exon,UTR,etc By default
    all feature are taking in account. fill the option by the value "all" will have
    the same behaviour.'
  type: string
  inputBinding:
    prefix: -p
- id: attribute
  doc: attribute tag. The value of the attribute tag specified will be extracted from
    the feature type specified by the option -p. List of attributes must be coma separated.
  type: boolean
  inputBinding:
    prefix: --attribute
- id: merge
  doc: By default the values of each attribute tag is writen in its dedicated file.
    To write the values of all tags in only one file use this option.
  type: string
  inputBinding:
    prefix: --merge
- id: default_when_attribute
  doc: By default when an attribute is not found for a feature, a dot (.) is reported.
    If you don't want anything to be printed in such case use this option.
  type: boolean
  inputBinding:
    prefix: -d
- id: _output_
  doc: ', --output , --out or --outfile Output GFF file. If no output file is specified,
    the output will be written to STDOUT.'
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_extract_attributes.pl