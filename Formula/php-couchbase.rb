require_relative "../lib/php_pecl_formula"

class PhpCouchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-2.6.2.tgz"
  sha256 "4f4c1a84edd05891925d7990e8425c00c064f8012ef711a1a7e222df9ad14252"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "cf3e979352c3cd92c6f200cd446893a0350c130a66e6205e7b6dfa02f75f4a2c" => :catalina
    sha256 "16b1f4c3e2c23e4eabc2f8ee472a4c7e0fa4bedbe7295809049f7657e2ea0673" => :mojave
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
