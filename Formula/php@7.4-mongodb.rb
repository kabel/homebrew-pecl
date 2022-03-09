require_relative "../lib/php_pecl_formula"

class PhpAT74Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.12.1.tgz"
  sha256 "925d7e6005c6e84bb40a25019c12b0ee4bda625c6449769dce7d5b026983f433"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, big_sur:  "3f4ef80bfd35a8a7e0ae408181d9c975e8baf06726129b3c4de53689ac70d7fe"
    sha256 cellar: :any, catalina: "1220b43e0e8d61ee828682aa1e609c83f7d85cb05c258ec076bf8f35a25fe076"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
