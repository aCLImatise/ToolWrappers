class: CommandLineTool
id: ../../../hailctl_dataproc_start.cwl
inputs:
- id: in_master_machine_type
  doc: 'Master machine type (default: n1-highmem-8).'
  type: long
  inputBinding:
    prefix: --master-machine-type
- id: in_master_memory_fraction
  doc: "Fraction of master memory allocated to the JVM. Use a\nsmaller value to reserve\
    \ more memory for Python.\n(default: 0.8)"
  type: double
  inputBinding:
    prefix: --master-memory-fraction
- id: in_master_boot_disk_size
  doc: 'Disk size of master machine, in GB (default: 100).'
  type: long
  inputBinding:
    prefix: --master-boot-disk-size
- id: in_num_master_local_ssds
  doc: "Number of local SSDs to attach to the master machine\n(default: 0)."
  type: long
  inputBinding:
    prefix: --num-master-local-ssds
- id: in_num_preemptible_workers
  doc: 'Number of preemptible worker machines (default: 0).'
  type: long
  inputBinding:
    prefix: --num-preemptible-workers
- id: in_num_worker_local_ssds
  doc: "Number of local SSDs to attach to each worker machine\n(default: 0)."
  type: long
  inputBinding:
    prefix: --num-worker-local-ssds
- id: in_num_workers
  doc: 'Number of worker machines (default: 2).'
  type: long
  inputBinding:
    prefix: --num-workers
- id: in_preemptible_worker_boot_disk_size
  doc: "Disk size of preemptible machines, in GB (default:\n40)."
  type: long
  inputBinding:
    prefix: --preemptible-worker-boot-disk-size
- id: in_worker_boot_disk_size
  doc: 'Disk size of worker machines, in GB (default: 40).'
  type: long
  inputBinding:
    prefix: --worker-boot-disk-size
- id: in_worker_machine_type
  doc: "Worker machine type (default: n1-standard-8, or\nn1-highmem-8 with --vep)."
  type: long
  inputBinding:
    prefix: --worker-machine-type
- id: in_zone
  doc: 'Compute zone for the cluster (default: us-central1-b).'
  type: long
  inputBinding:
    prefix: --zone
- id: in_properties
  doc: Additional configuration properties for the cluster
  type: string
  inputBinding:
    prefix: --properties
- id: in_metadata
  doc: "Comma-separated list of metadata to add:\nKEY1=VALUE1,KEY2=VALUE2..."
  type: long
  inputBinding:
    prefix: --metadata
- id: in_packages
  doc: "Comma-separated list of Python packages to be\ninstalled on the master node."
  type: string
  inputBinding:
    prefix: --packages
- id: in_project
  doc: "Google Cloud project to start cluster (defaults to\ncurrently set project)."
  type: string
  inputBinding:
    prefix: --project
- id: in_configuration
  doc: "Google Cloud configuration to start cluster (defaults\nto currently set configuration)."
  type: string
  inputBinding:
    prefix: --configuration
- id: in_max_idle
  doc: "If specified, maximum idle time before shutdown (e.g.\n60m)."
  type: long
  inputBinding:
    prefix: --max-idle
- id: in_max_age
  doc: If specified, maximum age before shutdown (e.g. 60m).
  type: long
  inputBinding:
    prefix: --max-age
- id: in_bucket
  doc: "The Google Cloud Storage bucket to use for cluster\nstaging (just the bucket\
    \ name, no gs:// prefix)."
  type: string
  inputBinding:
    prefix: --bucket
- id: in_network
  doc: the network for all nodes in this cluster
  type: string
  inputBinding:
    prefix: --network
- id: in_master_tags
  doc: "comma-separated list of instance tags to apply to the\nmastern node"
  type: string
  inputBinding:
    prefix: --master-tags
- id: in_wheel
  doc: 'Non-default Hail installation. Warning: experimental.'
  type: string
  inputBinding:
    prefix: --wheel
- id: in_in_it
  doc: Comma-separated list of init scripts to run.
  type: string
  inputBinding:
    prefix: --init
- id: in_in_it_timeout
  doc: "Flag to specify a timeout period for the\ninitialization action"
  type: string
  inputBinding:
    prefix: --init_timeout
- id: in_vep
  doc: Install VEP for the specified reference genome.
  type: string
  inputBinding:
    prefix: --vep
- id: in_dry_run
  doc: Print gcloud dataproc command, but don't run it.
  type: boolean
  inputBinding:
    prefix: --dry-run
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hailctl
- dataproc
- start
