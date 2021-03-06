class: CommandLineTool
id: ../../../DaisySuite.cwl
inputs:
- id: in_snake_file
  doc: The workflow definition in a snakefile.
  type: File
  inputBinding:
    prefix: --snakefile
- id: in_gui
  doc: "[PORT]          Serve an HTML based user interface to the given port\n(default:\
    \ 8000). If possible, a browser window is\nopened."
  type: boolean
  inputBinding:
    prefix: --gui
- id: in_cores
  doc: "[N], --jobs [N], -j [N]\nUse at most N cores in parallel (default: 1). If\
    \ N is\nomitted, the limit is set to the number of available\ncores."
  type: boolean
  inputBinding:
    prefix: --cores
- id: in_local_cores
  doc: "In cluster mode, use at most N cores of the host\nmachine in parallel (default:\
    \ number of CPU cores of\nthe host). The cores are used to execute local rules.\n\
    This option is ignored when not in cluster mode."
  type: long
  inputBinding:
    prefix: --local-cores
- id: in_resources
  doc: "[NAME=INT [NAME=INT ...]], --res [NAME=INT [NAME=INT ...]]\nDefine additional\
    \ resources that shall constrain the\nscheduling analogously to threads (see above).\
    \ A\nresource is defined as a name and an integer value.\nE.g. --resources gpu=1.\
    \ Rules can use resources by\ndefining the resource keyword, e.g. resources: gpu=1.\n\
    If now two rules require 1 of the resource 'gpu' they\nwon't be run in parallel\
    \ by the scheduler."
  type: boolean
  inputBinding:
    prefix: --resources
- id: in_config
  doc: "[KEY=VALUE [KEY=VALUE ...]], -C [KEY=VALUE [KEY=VALUE ...]]\nSet or overwrite\
    \ values in the workflow config object.\nThe workflow config object is accessible\
    \ as variable\nconfig inside the workflow. Default values can be set\nby providing\
    \ a JSON file (see Documentation)."
  type: boolean
  inputBinding:
    prefix: --config
- id: in_config_file
  doc: "Specify or overwrite the config file of the workflow\n(see the docs). Values\
    \ specified in JSON or YAML\nformat are available in the global config dictionary\n\
    inside the workflow."
  type: File
  inputBinding:
    prefix: --configfile
- id: in_list
  doc: Show availiable rules in given Snakefile.
  type: boolean
  inputBinding:
    prefix: --list
- id: in_list_target_rules
  doc: Show available target rules in given Snakefile.
  type: boolean
  inputBinding:
    prefix: --list-target-rules
- id: in_directory
  doc: "Specify working directory (relative paths in the\nsnakefile will use this\
    \ as their origin)."
  type: Directory
  inputBinding:
    prefix: --directory
- id: in_dry_run
  doc: Do not execute anything.
  type: boolean
  inputBinding:
    prefix: --dryrun
- id: in_print_shell_cmds
  doc: Print out the shell commands that will be executed.
  type: boolean
  inputBinding:
    prefix: --printshellcmds
- id: in_dag
  doc: "Do not execute anything and print the directed acyclic\ngraph of jobs in the\
    \ dot language. Recommended use on\nUnix systems: snakemake --dag | dot | display"
  type: boolean
  inputBinding:
    prefix: --dag
- id: in_force_use_threads
  doc: "Force threads rather than processes. Helpful if shared\nmemory (/dev/shm)\
    \ is full or unavailable."
  type: boolean
  inputBinding:
    prefix: --force-use-threads
- id: in_rule_graph
  doc: "Do not execute anything and print the dependency graph\nof rules in the dot\
    \ language. This will be less\ncrowded than above DAG of jobs, but also show less\n\
    information. Note that each rule is displayed once,\nhence the displayed graph\
    \ will be cyclic if a rule\nappears in several steps of the workflow. Use this\
    \ if\nabove option leads to a DAG that is too large.\nRecommended use on Unix\
    \ systems: snakemake --rulegraph\n| dot | display"
  type: boolean
  inputBinding:
    prefix: --rulegraph
- id: in_d_three_dag
  doc: Print the DAG in D3.js compatible JSON format.
  type: boolean
  inputBinding:
    prefix: --d3dag
- id: in_summary
  doc: "Print a summary of all files created by the workflow.\nThe has the following\
    \ columns: filename, modification\ntime, rule version, status, plan. Thereby rule\
    \ version\ncontains the versionthe file was created with (see the\nversion keyword\
    \ of rules), and status denotes whether\nthe file is missing, its input files\
    \ are newer or if\nversion or implementation of the rule changed since\nfile creation.\
    \ Finally the last column denotes whether\nthe file will be updated or created\
    \ during the next\nworkflow execution."
  type: boolean
  inputBinding:
    prefix: --summary
- id: in_detailed_summary
  doc: "Print a summary of all files created by the workflow.\nThe has the following\
    \ columns: filename, modification\ntime, rule version, input file(s), shell command,\n\
    status, plan. Thereby rule version contains the\nversionthe file was created with\
    \ (see the version\nkeyword of rules), and status denotes whether the file\nis\
    \ missing, its input files are newer or if version or\nimplementation of the rule\
    \ changed since file\ncreation. The input file and shell command columns are\n\
    selfexplanatory. Finally the last column denotes\nwhether the file will be updated\
    \ or created during the\nnext workflow execution."
  type: boolean
  inputBinding:
    prefix: --detailed-summary
- id: in_touch
  doc: "Touch output files (mark them up to date without\nreally changing them) instead\
    \ of running their\ncommands. This is used to pretend that the rules were\nexecuted,\
    \ in order to fool future invocations of\nsnakemake. Fails if a file does not\
    \ yet exist."
  type: File
  inputBinding:
    prefix: --touch
- id: in_keep_going
  doc: Go on with independent jobs if a job fails.
  type: boolean
  inputBinding:
    prefix: --keep-going
- id: in_force
  doc: "Force the execution of the selected target or the\nfirst rule regardless of\
    \ already created output."
  type: boolean
  inputBinding:
    prefix: --force
- id: in_force_all
  doc: "Force the execution of the selected (or the first)\nrule and all rules it\
    \ is dependent on regardless of\nalready created output."
  type: boolean
  inputBinding:
    prefix: --forceall
- id: in_force_run
  doc: "[TARGET [TARGET ...]], -R [TARGET [TARGET ...]]\nForce the re-execution or\
    \ creation of the given rules\nor files. Use this option if you changed a rule\
    \ and\nwant to have all its output in your workflow updated."
  type: boolean
  inputBinding:
    prefix: --forcerun
- id: in_prioritize
  doc: "Tell the scheduler to assign creation of given targets\n(and all their dependencies)\
    \ highest priority.\n(EXPERIMENTAL)"
  type: string[]
  inputBinding:
    prefix: --prioritize
- id: in_until
  doc: "Runs the pipeline until it reaches the specified rules\nor files. Only runs\
    \ jobs that are dependencies of the\nspecified rule or files, does not run sibling\
    \ DAGs."
  type: string[]
  inputBinding:
    prefix: --until
- id: in_omit_from
  doc: "Prevent the execution or creation of the given rules\nor files as well as\
    \ any rules or files that are\ndownstream of these targets in the DAG. Also runs\
    \ jobs\nin sibling DAGs that are independent of the rules or\nfiles specified\
    \ here."
  type: string[]
  inputBinding:
    prefix: --omit-from
- id: in_allow_ambiguity
  doc: "Don't check for ambiguous rules and simply use the\nfirst if several can produce\
    \ the same file. This\nallows the user to prioritize rules by their order in\n\
    the snakefile."
  type: boolean
  inputBinding:
    prefix: --allow-ambiguity
- id: in_cluster
  doc: "Execute snakemake rules with the given submit command,\ne.g. qsub. Snakemake\
    \ compiles jobs into scripts that\nare submitted to the cluster with the given\
    \ command,\nonce all input files for a particular job are present.\nThe submit\
    \ command can be decorated to make it aware\nof certain job properties (input,\
    \ output, params,\nwildcards, log, threads and dependencies (see the\nargument\
    \ below)), e.g.: $ snakemake --cluster 'qsub\n-pe threaded {threads}'."
  type: string
  inputBinding:
    prefix: --cluster
- id: in_cluster_sync
  doc: "cluster submission command will block, returning the\nremote exitstatus upon\
    \ remote termination (for\nexample, this should be usedif the cluster command\
    \ is\n'qsub -sync y' (SGE)"
  type: string
  inputBinding:
    prefix: --cluster-sync
- id: in_drmaa
  doc: "[ARGS]        Execute snakemake on a cluster accessed via DRMAA,\nSnakemake\
    \ compiles jobs into scripts that are\nsubmitted to the cluster with the given\
    \ command, once\nall input files for a particular job are present. ARGS\ncan be\
    \ used to specify options of the underlying\ncluster system, thereby using the\
    \ job properties\ninput, output, params, wildcards, log, threads and\ndependencies,\
    \ e.g.: --drmaa ' -pe threaded {threads}'.\nNote that ARGS must be given in quotes\
    \ and with a\nleading whitespace."
  type: boolean
  inputBinding:
    prefix: --drmaa
- id: in_cluster_config
  doc: "A JSON or YAML file that defines the wildcards used in\n'cluster'for specific\
    \ rules, instead of having them\nspecified in the Snakefile. For example, for\
    \ rule\n'job' you may define: { 'job' : { 'time' : '24:00:00'\n} } to specify\
    \ the time for rule 'job'. You can\nspecify more than one file. The configuration\
    \ files\nare merged with later values overriding earlier ones."
  type: File
  inputBinding:
    prefix: --cluster-config
- id: in_immediate_submit
  doc: "Immediately submit all jobs to the cluster instead of\nwaiting for present\
    \ input files. This will fail,\nunless you make the cluster aware of job dependencies,\n\
    e.g. via: $ snakemake --cluster 'sbatch --dependency\n{dependencies}. Assuming\
    \ that your submit script (here\nsbatch) outputs the generated job id to the first\n\
    stdout line, {dependencies} will be filled with space\nseparated job ids this\
    \ job depends on."
  type: boolean
  inputBinding:
    prefix: --immediate-submit
- id: in_job_script
  doc: "Provide a custom job script for submission to the\ncluster. The default script\
    \ resides as 'jobscript.sh'\nin the installation directory."
  type: Directory
  inputBinding:
    prefix: --jobscript
- id: in_job_name
  doc: "Provide a custom name for the jobscript that is\nsubmitted to the cluster\
    \ (see --cluster). NAME is\n\"snakejob.{rulename}.{jobid}.sh\" per default. The\n\
    wildcard {jobid} has to be present in the name."
  type: string
  inputBinding:
    prefix: --jobname
- id: in_reason
  doc: Print the reason for each executed rule.
  type: boolean
  inputBinding:
    prefix: --reason
- id: in_stats
  doc: "Write stats about Snakefile execution in JSON format\nto the given file."
  type: File
  inputBinding:
    prefix: --stats
- id: in_no_color
  doc: Do not use a colored output.
  type: boolean
  inputBinding:
    prefix: --nocolor
- id: in_quiet
  doc: Do not output any progress or rule information.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_no_lock
  doc: Do not lock the working directory
  type: boolean
  inputBinding:
    prefix: --nolock
- id: in_unlock
  doc: Remove a lock on the working directory.
  type: boolean
  inputBinding:
    prefix: --unlock
- id: in_cleanup_metadata
  doc: "Cleanup the metadata of given files. That means that\nsnakemake removes any\
    \ tracked version info, and any\nmarks that files are incomplete."
  type: File[]
  inputBinding:
    prefix: --cleanup-metadata
- id: in_rerun_incomplete
  doc: "Re-run all jobs the output of which is recognized as\nincomplete."
  type: boolean
  inputBinding:
    prefix: --rerun-incomplete
- id: in_ignore_incomplete
  doc: Do not check for incomplete output files.
  type: boolean
  inputBinding:
    prefix: --ignore-incomplete
- id: in_list_version_changes
  doc: "List all output files that have been created with a\ndifferent version (as\
    \ determined by the version\nkeyword)."
  type: boolean
  inputBinding:
    prefix: --list-version-changes
- id: in_list_code_changes
  doc: "List all output files for which the rule body (run or\nshell) have changed\
    \ in the Snakefile."
  type: boolean
  inputBinding:
    prefix: --list-code-changes
- id: in_list_input_changes
  doc: "List all output files for which the defined input\nfiles have changed in the\
    \ Snakefile (e.g. new input\nfiles were added in the rule definition or files\
    \ were\nrenamed). For listing input file modification in the\nfilesystem, use\
    \ --summary."
  type: boolean
  inputBinding:
    prefix: --list-input-changes
- id: in_list_params_changes
  doc: "List all output files for which the defined params\nhave changed in the Snakefile."
  type: boolean
  inputBinding:
    prefix: --list-params-changes
- id: in_latency_wait
  doc: "Wait given seconds if an output file of a job is not\npresent after the job\
    \ finished. This helps if your\nfilesystem suffers from latency (default 5)."
  type: File
  inputBinding:
    prefix: --latency-wait
- id: in_wait_for_files
  doc: "[FILE [FILE ...]]\nWait --latency-wait seconds for these files to be\npresent\
    \ before executing the workflow. This option is\nused internally to handle filesystem\
    \ latency in\ncluster environments."
  type: boolean
  inputBinding:
    prefix: --wait-for-files
- id: in_benchmark_repeats
  doc: "Repeat a job N times if marked for benchmarking\n(default 1)."
  type: long
  inputBinding:
    prefix: --benchmark-repeats
- id: in_no_temp
  doc: "Ignore temp() declarations. This is useful when\nrunning only a part of the\
    \ workflow, since temp()\nwould lead to deletion of probably needed files by\n\
    other parts of the workflow."
  type: boolean
  inputBinding:
    prefix: --notemp
- id: in_keep_remote
  doc: Keep local copies of remote input files.
  type: boolean
  inputBinding:
    prefix: --keep-remote
- id: in_keep_target_files
  doc: "Do not adjust the paths of given target files relative\nto the working directory."
  type: boolean
  inputBinding:
    prefix: --keep-target-files
- id: in_keep_shadow
  doc: Do not delete the shadow directory on snakemake
  type: boolean
  inputBinding:
    prefix: --keep-shadow
- id: in_max_jobs_per_second
  doc: "Maximal number of cluster/drmaa jobs per second,\ndefault is no limit"
  type: long
  inputBinding:
    prefix: --max-jobs-per-second
- id: in_timestamp
  doc: Add a timestamp to all logging output
  type: boolean
  inputBinding:
    prefix: --timestamp
- id: in_greediness
  doc: "Set the greediness of scheduling. This value between 0\nand 1 determines how\
    \ careful jobs are selected for\nexecution. The default value (1.0) provides the\
    \ best\nspeed and still acceptable scheduling quality."
  type: double
  inputBinding:
    prefix: --greediness
- id: in_no_hooks
  doc: "Do not invoke onstart, onsuccess or onerror hooks\nafter execution."
  type: boolean
  inputBinding:
    prefix: --no-hooks
- id: in_print_compilation
  doc: Print the python representation of the workflow.
  type: boolean
  inputBinding:
    prefix: --print-compilation
- id: in_overwrite_shell_cmd
  doc: "Provide a shell command that shall be executed instead\nof those given in\
    \ the workflow. This is for debugging\npurposes only."
  type: string
  inputBinding:
    prefix: --overwrite-shellcmd
- id: in_verbose
  doc: Print debugging output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: "Allow to debug rules with e.g. PDB. This flag allows\nto set breakpoints in\
    \ run blocks."
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_profile
  doc: "Profile Snakemake and write the output to FILE. This\nrequires yappi to be\
    \ installed."
  type: File
  inputBinding:
    prefix: --profile
- id: in_mode
  doc: Set execution mode of Snakemake (internal use only).
  type: string
  inputBinding:
    prefix: --mode
- id: in_bash_completion
  doc: "Output code to register bash completion for snakemake.\nPut the following\
    \ in your .bashrc (including the\naccents): `snakemake --bash-completion` or issue\
    \ it in\nan open terminal session."
  type: boolean
  inputBinding:
    prefix: --bash-completion
- id: in_use_cond_a
  doc: "If defined in the rule, create job specific conda\nenvironments. If this flag\
    \ is not set, the conda\ndirective is ignored."
  type: boolean
  inputBinding:
    prefix: --use-conda
- id: in_wrapper_prefix
  doc: "Prefix for URL created from wrapper directive\n(default: https://bitbucket.org/snakemake/snakemake-\n\
    wrappers/raw/). Set this to a different URL to use\nyour fork or a local clone\
    \ of the repository."
  type: string
  inputBinding:
    prefix: --wrapper-prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_touch
  doc: "Touch output files (mark them up to date without\nreally changing them) instead\
    \ of running their\ncommands. This is used to pretend that the rules were\nexecuted,\
    \ in order to fool future invocations of\nsnakemake. Fails if a file does not\
    \ yet exist."
  type: File
  outputBinding:
    glob: $(inputs.in_touch)
- id: out_latency_wait
  doc: "Wait given seconds if an output file of a job is not\npresent after the job\
    \ finished. This helps if your\nfilesystem suffers from latency (default 5)."
  type: File
  outputBinding:
    glob: $(inputs.in_latency_wait)
- id: out_profile
  doc: "Profile Snakemake and write the output to FILE. This\nrequires yappi to be\
    \ installed."
  type: File
  outputBinding:
    glob: $(inputs.in_profile)
cwlVersion: v1.1
baseCommand:
- DaisySuite
