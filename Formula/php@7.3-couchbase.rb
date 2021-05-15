require_relative "../lib/php_pecl_formula"

class PhpAT73Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-3.1.2.tgz"
  sha256 "4f53da67e091238f12bd0896897c29bb7c6b70a584a626bd72dcd466cbf23c06"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "ea31da2e6ced3e8b953a421cdb9f2c3167064cc8a4a37353f5471fa148e44d2e"
    sha256 catalina: "b49022a4743b8ed8e9b75e419df4be906757c2c34b03d74696a5628cde6206c6"
    sha256 mojave:   "6875883038f90147662b0b255c06469effedc82de799cfa7cc69f2dd9bb97ea9"
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
