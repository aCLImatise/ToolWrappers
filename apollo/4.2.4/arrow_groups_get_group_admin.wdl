version 1.0

task ArrowGroupsGetGroupAdmin {
  input {
    String group
  }
  command <<<
    arrow groups get_group_admin \
      ~{group}
  >>>
  parameter_meta {
    group: ""
  }
  output {
    File out_stdout = stdout()
  }
}