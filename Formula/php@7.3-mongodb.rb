require_relative "../lib/php_pecl_formula"

class PhpAT73Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.7.4.tgz"
  sha256 "1cec8be860d7d6cff05b075a0e0fc47b1d9f580ef6a0cd46948e455a88a6859a"
  revision 2

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "53db98ee74c5a6879d91ffb21c64fe2d05dec06c52c7f3b85be6236f9486e13c" => :catalina
    sha256 "f7f0bc9005e83c0dba0c37b33fc413ff2e1ce483b5271302cc5cf5971a9f10b0" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
