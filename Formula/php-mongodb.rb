require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.7.2.tgz"
  sha256 "11e1c4d8d786ddc6b2fa32da487d53eb274ba9d41a08ba5a14938b3d43652b02"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "d4efa24ed2cb2c642e18b29f613dc080a2934735a2a2c8a61d9673ea1a48e9da" => :catalina
    sha256 "c2f721dc5d552e2caa82ddcf4035e98cc179c9fd9e988a5ee21a1614ceb89c32" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
