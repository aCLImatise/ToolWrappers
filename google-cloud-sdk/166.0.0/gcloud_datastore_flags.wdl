version 1.0

task GcloudDatastoreFlags {
  input {
    String g_cloud
    String datastore
    String? optional
    String? flags
    String var_command
  }
  command <<<
    gcloud datastore flags \
      ~{g_cloud} \
      ~{datastore} \
      ~{optional} \
      ~{flags} \
      ~{var_command}
  >>>
  parameter_meta {
    g_cloud: ""
    datastore: ""
    optional: ""
    flags: ""
    var_command: ""
  }
  output {
    File out_stdout = stdout()
  }
}