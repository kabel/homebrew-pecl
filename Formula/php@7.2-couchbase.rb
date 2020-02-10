require_relative "../lib/php_pecl_formula"

class PhpAT72Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-2.6.2.tgz"
  sha256 "4f4c1a84edd05891925d7990e8425c00c064f8012ef711a1a7e222df9ad14252"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "ce5991408c0dd8b10d07dd9fd5c97f47ef4473e7cb7e40dce8439e65b20c86ec" => :catalina
    sha256 "66cd78d8dd34e605fb287da55bd66fd5f1778455fedd1fdcda6425573a385dee" => :mojave
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
