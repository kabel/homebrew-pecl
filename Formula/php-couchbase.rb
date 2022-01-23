require_relative "../lib/php_pecl_formula"

class PhpCouchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-3.2.2.tgz"
  sha256 "d8bd785ccce818e0beb9694cd02ab01ed26e0cf9b19217d2bc2e92b38b21c9c1"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, big_sur:  "764417727b2bdf3190c64867a93b55c3a144d52bda74087aff5dcb8e28720685"
    sha256 cellar: :any, catalina: "8619c0758d22daf1494f7991e068fb39c73f289f3d31fed542a1da3dda42f4a0"
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
