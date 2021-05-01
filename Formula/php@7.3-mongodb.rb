require_relative "../lib/php_pecl_formula"

class PhpAT73Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.9.1.tgz"
  sha256 "e9d1ce23168385aae24d9b516cab3d67504c85e800569e0fcf2f2125bcd6fed7"
  revision 1
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "d8886d97fdacfdc017eaefb559df2ddc962ea3e0bd8e7f485d1a779cb464e628"
    sha256 catalina: "cf36fc3a29f57d3eb3e88c443006234434ee62d483b4bb895413868b8d742b38"
    sha256 mojave:   "36088fc0f64ee000a3cc50726cc4dbaf18a099de9d85481b206c8d7a8a4e01c9"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
