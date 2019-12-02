require_relative "../lib/php_pecl_formula"

class PhpAT73Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-2.6.1.tgz"
  sha256 "e977a08f4b6b75eb7a903e76c069ad3a12f19a7ea1b0c4da8b04c1c3cc7a5743"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "6a2b037f96ad00318bad4ff90815a14980413596847722ba93afae35ca559b51" => :mojave
    sha256 "f3239a9d8950ad218eee0fd12a8ddb0419bde12110d3ccebfbb8c9896af4c8fe" => :high_sierra
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
