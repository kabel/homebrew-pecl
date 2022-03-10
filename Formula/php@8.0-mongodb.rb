require_relative "../lib/php_pecl_formula"

class PhpAT80Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.12.1.tgz"
  sha256 "925d7e6005c6e84bb40a25019c12b0ee4bda625c6449769dce7d5b026983f433"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, big_sur:  "bcaae6d0ea014102cf6f29ee2dc9aa370f333b45be4cbd10995beeac3bfc10eb"
    sha256 cellar: :any, catalina: "7866f6146540290f82b001a94dd2ef0035a3d2fda8da2992c047cb5e9675e2ed"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
