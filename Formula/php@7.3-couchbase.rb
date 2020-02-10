require_relative "../lib/php_pecl_formula"

class PhpAT73Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-2.6.2.tgz"
  sha256 "4f4c1a84edd05891925d7990e8425c00c064f8012ef711a1a7e222df9ad14252"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "ca4b201a891bfff7e750b98e3055a6cefc2b606a27de6d495203c8c628d81ec0" => :catalina
    sha256 "da8a84681bc9e154f98228e6056544485400f957e2c2ba329d6d6ecf179d6834" => :mojave
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
