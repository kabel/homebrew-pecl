require_relative "../lib/php_pecl_formula"

class PhpAT72Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-2.6.2.tgz"
  sha256 "4f4c1a84edd05891925d7990e8425c00c064f8012ef711a1a7e222df9ad14252"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "b1ce7a5aadf6924ee05e004e57b0b2ee9163ad10e1a4954a6601086c43678a38" => :mojave
    sha256 "b03a9de7d41ab7ccd0a93cd5186f8584280bb7ae79e1830daeb1410e8ac1b0a4" => :high_sierra
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
