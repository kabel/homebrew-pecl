require_relative "../lib/php_pecl_formula"

class PhpAT74Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.12.1.tgz"
  sha256 "925d7e6005c6e84bb40a25019c12b0ee4bda625c6449769dce7d5b026983f433"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, big_sur:  "bd95ce8bc450a181c27d4b0b57f58d45bba51b682cc14c8a093c8dbbd27e4a21"
    sha256 cellar: :any, catalina: "5de5ead3c9743dc7d0b534507fafabfb360da9f02caaa4fa2f1691296c443917"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
