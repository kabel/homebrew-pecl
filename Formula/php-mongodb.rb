require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.12.1.tgz"
  sha256 "925d7e6005c6e84bb40a25019c12b0ee4bda625c6449769dce7d5b026983f433"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, big_sur:  "530b9f673ada021ac4f23b5549b36f2ebaed75edd07f3cb77e87bc7ae41cd173"
    sha256 cellar: :any, catalina: "a8a600f473cf60f73c284050310b49a785b37307717e0d38932b3e1e4eaa1d43"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
