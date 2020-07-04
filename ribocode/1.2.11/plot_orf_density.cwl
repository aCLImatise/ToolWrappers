class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/plot_orf_density.cwl
inputs:
- id: an_not_dir
  doc: transcripts annotation directory, generated by prepare_transcripts.
  type: string
  inputBinding:
    prefix: --annot_dir
- id: config_file
  doc: defile bam file information in this file, please refer to the example file
    in data folder.
  type: string
  inputBinding:
    prefix: --config_file
- id: transcript_id
  doc: the transcript id
  type: string
  inputBinding:
    prefix: --transcript_id
- id: orf_t_start
  doc: transcript-level coordinates of start of ORF (orf_tstart)
  type: string
  inputBinding:
    prefix: --orf_tstart
- id: orf_t_stop
  doc: transcript-level coordinates of end of ORF (orf_tstop)
  type: string
  inputBinding:
    prefix: --orf_tstop
- id: out_name
  doc: output file name,default is transcriptid_tstart_tstop.pdf
  type: string
  inputBinding:
    prefix: --outname
outputs: []
cwlVersion: v1.1
baseCommand:
- plot_orf_density