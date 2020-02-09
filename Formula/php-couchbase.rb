require_relative "../lib/php_pecl_formula"

class PhpCouchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-2.6.2.tgz"
  sha256 "4f4c1a84edd05891925d7990e8425c00c064f8012ef711a1a7e222df9ad14252"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "ac206c45a229a6e827ed381960a5fb614e42c6b99275d9705370b142a62102e9" => :mojave
    sha256 "2cb9c18ab5b66461d6461151f7e33e3f6715e10b1ac0cd198e1f6062122d4975" => :high_sierra
  end

  depends_on "libcouchbase"

  configure_arg "--with-couchbase=#{Formula["libcouchbase"].opt_prefix}"
end
