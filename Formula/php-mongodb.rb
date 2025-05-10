require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-2.0.0.tgz"
  sha256 "6a53987a5e75fc65d032ac93cc8d4522a5cd06e068828e6b6e12612597fc88df"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "c65cfc31959bb4b85d411ce7583c2357159d2518842e904ebce12e09f2b90171"
    sha256 cellar: :any, ventura: "f5ff4ab640a9b7d76843319033bdd8ca28eaa72827b3b92514b147b2a0f63ed7"
  end

  depends_on "icu4c"
  depends_on "openssl@3"
  depends_on "snappy"
  depends_on "zstd"
end
