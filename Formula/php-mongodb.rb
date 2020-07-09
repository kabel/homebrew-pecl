require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.7.5.tgz"
  sha256 "e48a07618c0ae8be628299991b5f481861c891a22544a2365a63361cc181c379"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "b0f38df4a6790ddf9add567e5d8c5dfb38db5c9e5df9db38d819fb70f43dbc15" => :catalina
    sha256 "c2e14d4f73fe3313d59e0ba84830f825104bd6020ac4099b92e9d5eeed257e2e" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
