require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.12.1.tgz"
  sha256 "925d7e6005c6e84bb40a25019c12b0ee4bda625c6449769dce7d5b026983f433"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any, big_sur:  "b4dd56a9a344419f087a6efeed56503a594da7d02763ce544a7ab72f87d3870f"
    sha256 cellar: :any, catalina: "499af73b02d700d1a1fa2a220b1da54f87ffbe7fba023ab0619162faf26472c4"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
