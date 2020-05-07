version 1.0

task GeneIdToUniProtId {
  input {
    String? hostHost
    String? portPort
    String? secureSecure
    String? requestRequestHeaders
    File? pathPath
    String? queryQueryString
    String? methodMethod
    String? proxyProxy
    String? rawRawBody
    String? redirectRedirectCount
    String? responseResponseTimeOut
    String? requestRequestVersion
  }
  command <<<
    GeneIdToUniProtId \
      ~{hostHost} \
      ~{portPort} \
      ~{secureSecure} \
      ~{requestRequestHeaders} \
      ~{pathPath} \
      ~{queryQueryString} \
      ~{methodMethod} \
      ~{proxyProxy} \
      ~{rawRawBody} \
      ~{redirectRedirectCount} \
      ~{responseResponseTimeOut} \
      ~{requestRequestVersion}
  >>>
}