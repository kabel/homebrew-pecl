require_relative "../lib/php_pecl_formula"

class PhpAT72Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.7.4.tgz"
  sha256 "1cec8be860d7d6cff05b075a0e0fc47b1d9f580ef6a0cd46948e455a88a6859a"
  revision 2

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "0fec42170c66db858beb29b1789d19658e5dee0d5dfab1d7f1a9e6bf280c62db" => :catalina
    sha256 "e3de8af1c799c2e284b953d7edcfe00b76a3d30456e7a9762a0e1ace24b6862c" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
