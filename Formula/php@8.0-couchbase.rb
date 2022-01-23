require_relative "../lib/php_pecl_formula"

class PhpAT80Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-3.2.2.tgz"
  sha256 "d8bd785ccce818e0beb9694cd02ab01ed26e0cf9b19217d2bc2e92b38b21c9c1"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, big_sur:  "0d9881eab7ccdee9fd61d4bb34ecd1b9d645eb49baa3459f341cfacf9fdf2f04"
    sha256 cellar: :any, catalina: "92c15f65273dcbf7bd6749915f74ccc2bad9b980c53f513049e2859aebd7d706"
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
