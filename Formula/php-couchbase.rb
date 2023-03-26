require_relative "../lib/php_pecl_formula"

class PhpCouchbase < PhpPeclFormula
  extension_dsl "Couchbase Server"

  url "https://pecl.php.net/get/couchbase-4.1.2.tgz"
  sha256 "c5d3109365a47a785ad21713a27cbb3da7205da506bc7bf255ea04fc14d835e2"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 ventura:  "bc90da1824008dc6fb2f894c9e7708362ec4464126393ad06f9b2652d26a525f"
    sha256 monterey: "62454499a8c5298ba62c0569fb5d276e394f7983b06750ae634b665a1608dc75"
    sha256 big_sur:  "6ed6cfd348632c09acc25b65cfee29f14710c6c73fe91b5d3877ba3b2cde2994"
  end

  depends_on "cmake" => :build
  depends_on "openssl@1.1"
end
