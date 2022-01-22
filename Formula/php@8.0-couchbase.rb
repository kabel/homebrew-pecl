require_relative "../lib/php_pecl_formula"

class PhpAT80Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-3.2.2.tgz"
  sha256 "d8bd785ccce818e0beb9694cd02ab01ed26e0cf9b19217d2bc2e92b38b21c9c1"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "014dabaa7d78da0ac0022129c1322935abebecdd8e563bbcb2304fd3c6934b01"
    sha256 catalina: "c2375a8ebee15fbcff2faefaac8b95db05cf99fe071ef191f648d4f383eaf449"
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
