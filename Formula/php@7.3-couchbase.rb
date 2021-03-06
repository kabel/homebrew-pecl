require_relative "../lib/php_pecl_formula"

class PhpAT73Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-3.1.1.tgz"
  sha256 "1723b6673c243734fd0eb880fe90c1ee7a45446876f7d2bf51665b9621f6eb37"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 "be8b03b19c7c88093f9669a705a488a752c53de7a12917a8aed87b857cfabc12" => :catalina
    sha256 "d2d0899291d462532d46434af98942bf7caa1b7ed07207fc3680e216b1d226af" => :mojave
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
