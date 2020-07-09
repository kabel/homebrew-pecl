require_relative "../lib/php_pecl_formula"

class PhpAT73Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.7.5.tgz"
  sha256 "e48a07618c0ae8be628299991b5f481861c891a22544a2365a63361cc181c379"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "15bfc3ac4e760d1da7cedf0431910d3d2c59e9f54a51920d8d5e18eeae5e8287" => :catalina
    sha256 "39805ba0f6b8cb1e53d99d6d8b901b6f34bdf42ce91a7125c113d41e484fca47" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
