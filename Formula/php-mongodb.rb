require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.7.3.tgz"
  sha256 "bbe8992f9b26815e51e7a0fccfe39340ee0702a0adbc06dc9c420e746ae61d2c"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "d4efa24ed2cb2c642e18b29f613dc080a2934735a2a2c8a61d9673ea1a48e9da" => :catalina
    sha256 "c2f721dc5d552e2caa82ddcf4035e98cc179c9fd9e988a5ee21a1614ceb89c32" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
