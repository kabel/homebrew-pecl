require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.7.4.tgz"
  sha256 "1cec8be860d7d6cff05b075a0e0fc47b1d9f580ef6a0cd46948e455a88a6859a"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "c6c7ac7a7848774a92c95b1151c28204c44115ad53d3af8c72a39d85bb3faaa6" => :catalina
    sha256 "241329733814ff487fa99956e91d05cca289606311a69f645ec88cb6dde794b1" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
