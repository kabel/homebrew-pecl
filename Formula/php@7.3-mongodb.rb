require_relative "../lib/php_pecl_formula"

class PhpAT73Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.8.0.tgz"
  sha256 "096f02f240f1c7108dbbc9b4cd93e53e0517c8a85aaf99ac2fdd368f149a23b1"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "15bfc3ac4e760d1da7cedf0431910d3d2c59e9f54a51920d8d5e18eeae5e8287" => :catalina
    sha256 "39805ba0f6b8cb1e53d99d6d8b901b6f34bdf42ce91a7125c113d41e484fca47" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
