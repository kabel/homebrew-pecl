require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.7.4.tgz"
  sha256 "1cec8be860d7d6cff05b075a0e0fc47b1d9f580ef6a0cd46948e455a88a6859a"
  revision 2

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "b0f38df4a6790ddf9add567e5d8c5dfb38db5c9e5df9db38d819fb70f43dbc15" => :catalina
    sha256 "c2e14d4f73fe3313d59e0ba84830f825104bd6020ac4099b92e9d5eeed257e2e" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
