require_relative "../lib/php_pecl_formula"

class PhpAT74Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-3.2.1.tgz"
  sha256 "409faf0903fbc9d2e46952fe6d31e22415c51ee6f8d3aea5095c5415d58e18b4"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "886d15f197797cc01aaac1b8ee79844567a3d84da647e95e83bc34c951227e43"
    sha256 catalina: "91d02537a609c0fc8f33adeec3a08cdc26475df74a61d03549be5422a395e14a"
    sha256 mojave:   "59ca379642a6c4dc2e8ed6b76e60c5873d80f691b132d2e1d209732afccdfeb9"
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
