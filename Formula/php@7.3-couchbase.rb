require_relative "../lib/php_pecl_formula"

class PhpAT73Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-3.2.0.tgz"
  sha256 "7f4c9da9a468e922d5a4a283607d6e5a659888f49cd6a71743ac87265fb29ae7"
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
