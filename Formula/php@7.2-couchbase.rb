require_relative "../lib/php_pecl_formula"

class PhpAT72Couchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-2.6.2.tgz"
  sha256 "4f4c1a84edd05891925d7990e8425c00c064f8012ef711a1a7e222df9ad14252"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "315958e85c6b8d711879ad71f60a613b3fc27bee725c041e02bf01d57020860f" => :catalina
    sha256 "bdb5ca4d69d1e3eacebc59398efa3327c10c7621489178f2e71b33fd85a75143" => :mojave
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
