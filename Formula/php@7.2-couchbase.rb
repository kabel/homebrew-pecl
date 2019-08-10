require_relative "../lib/php_pecl_formula"

class PhpAT72Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-2.6.1.tgz"
  sha256 "e977a08f4b6b75eb7a903e76c069ad3a12f19a7ea1b0c4da8b04c1c3cc7a5743"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "b1ce7a5aadf6924ee05e004e57b0b2ee9163ad10e1a4954a6601086c43678a38" => :mojave
    sha256 "b03a9de7d41ab7ccd0a93cd5186f8584280bb7ae79e1830daeb1410e8ac1b0a4" => :high_sierra
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
