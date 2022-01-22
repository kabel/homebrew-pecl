require_relative "../lib/php_pecl_formula"

class PhpAT74Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-3.2.2.tgz"
  sha256 "d8bd785ccce818e0beb9694cd02ab01ed26e0cf9b19217d2bc2e92b38b21c9c1"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "d69ddfb4544ed20cdf5acafa48dd40eb55dbef6402364fae6683ced39e8acaf6"
    sha256 catalina: "849e3706a7a2249b29bc8650e2de58ef51f167140a659333ef61dba028aae91b"
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
