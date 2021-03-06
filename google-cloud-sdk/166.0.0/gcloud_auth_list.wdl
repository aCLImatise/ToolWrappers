version 1.0

task GcloudAuthList {
  input {
    String? filter_account
    Boolean? filter
    Int? limit
    Int? page_size
    Boolean? sort_by
    Boolean? format
  }
  command <<<
    gcloud auth list \
      ~{if defined(filter_account) then ("--filter-account " +  '"' + filter_account + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if defined(page_size) then ("--page-size " +  '"' + page_size + '"') else ""} \
      ~{if (sort_by) then "--sort-by" else ""} \
      ~{if (format) then "--format" else ""}
  >>>
  parameter_meta {
    filter_account: "List only credentials for one account. Use --filter=\\\"account~PATTERN\\\"\\nto select accounts that match PATTERN."
    filter: "Apply a Boolean filter EXPRESSION to each resource item to be listed.\\nIf the expression evaluates True then that item is listed. For more\\ndetails and examples of filter expressions run $ gcloud topic filters.\\nThis flag interacts with other flags that are applied in this order:\\n--flatten, --sort-by, --filter, --limit."
    limit: "The maximum number of resources to list. The default is unlimited. This\\nflag interacts with other flags that are applied in this order:\\n--flatten, --sort-by, --filter, --limit."
    page_size: "Some services group resource list output into pages. This flag\\nspecifies the maximum number of resources per page. The default is\\ndetermined by the service if it supports paging, otherwise it is\\nunlimited (no paging). Paging may be applied before or after --filter\\nand --limit depending on the service."
    sort_by: "=[FIELD,...]\\nA comma-separated list of resource field key names to sort by. The\\ndefault order is ascending. Prefix a field with ``~'' for descending\\norder on that field. This flag interacts with other flags that are\\napplied in this order: --flatten, --sort-by, --filter, --limit."
    format: "=\\\"value(account)\\\""
  }
  output {
    File out_stdout = stdout()
  }
}