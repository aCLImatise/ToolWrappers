class: CommandLineTool
id: ../../../anvi_get_codon_frequencies.cwl
inputs:
- id: in_contigs_db
  doc: "Anvi'o contigs database generated by 'anvi-gen-\ncontigs'"
  type: string
  inputBinding:
    prefix: --contigs-db
- id: in_gene_caller_id
  doc: "OK. You can declare a single gene caller ID if you\nwish, in which case anvi'o\
    \ would only return results\nfor a single gene call. If you don't declare anything,\n\
    well, you must be prepared to brace yourself if you\nare working with a very large\
    \ contigs database with\nhundreds of thousands of genes."
  type: string
  inputBinding:
    prefix: --gene-caller-id
- id: in_return_aa_frequencies_instead
  doc: "By default, anvi'o will return codon frequencies (as\nthe name suggests),\
    \ but you can ask for amino acid\nfrequencies instead, simply because you always\
    \ need\nmore data and more stuff. You're lucky this time, but\nis there an end\
    \ to this? Will you ever be satisfied\nwith what you have? Anvi'o needs answers."
  type: boolean
  inputBinding:
    prefix: --return-AA-frequencies-instead
- id: in_output_file
  doc: File path to store results.
  type: File
  inputBinding:
    prefix: --output-file
- id: in_percent_normalize
  doc: "Instead of actual counts, report percent-normalized\nfrequencies per gene\
    \ (because you are too lazy to do\nthings the proper way in R)."
  type: boolean
  inputBinding:
    prefix: --percent-normalize
- id: in_mere_ns_codon_normalization
  doc: "This is a flag to percent normalize codon frequenies\nwithin those that encode\
    \ for the same amino acid. It\nis different from the flag --percent-normalize,\
    \ since\nit does not percent normalize frequencies of codons\nwithin a gene based\
    \ on all codon frequencies. Clearly\nthis flag is not applicable if you wish to\
    \ work with\nboring amino acids. WHO WORKS WITH AMINO ACIDS\nANYWAYS.\n"
  type: boolean
  inputBinding:
    prefix: --merens-codon-normalization
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: File path to store results.
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- anvi-get-codon-frequencies
