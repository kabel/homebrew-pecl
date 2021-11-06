require_relative "../lib/php_pecl_formula"

class PhpCouchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-3.2.1.tgz"
  sha256 "409faf0903fbc9d2e46952fe6d31e22415c51ee6f8d3aea5095c5415d58e18b4"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "cee140bbf58e4ac44ad4e332b62bdc469ad266c7d2e50bc4167666d79e140bb3"
    sha256 catalina: "31838ef43d8bfa124258f2ffec2fade45c3590d7bd4c1166117a9340ce723048"
    sha256 mojave:   "78e1af476da8fc76b83af236a3fef50da43b85ec6e8ab9dbb8a4eba045e71ae1"
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
