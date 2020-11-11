require_relative "../lib/php_pecl_formula"

class PhpCouchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-2.6.2.tgz"
  sha256 "4f4c1a84edd05891925d7990e8425c00c064f8012ef711a1a7e222df9ad14252"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "c80bf0881d25b605e012c322213ae475840547f858196cdeabfe55223998cbd5" => :catalina
    sha256 "4cf46a16a84e5145faca1786c269c9f156587dc0df7bf04185e4cf6b7b870b9a" => :mojave
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
