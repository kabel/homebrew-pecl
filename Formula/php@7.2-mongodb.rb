require_relative "../lib/php_pecl_formula"

class PhpAT72Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.7.4.tgz"
  sha256 "1cec8be860d7d6cff05b075a0e0fc47b1d9f580ef6a0cd46948e455a88a6859a"
  revision 1

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "89ba4c863164ada81816ce388a4abff5dae6c51faeefd08156138dff681be123" => :catalina
    sha256 "ee12bb833941399dd811f31dee0d8e25e15b0f7e804e54e7120db4ca8ed7785b" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
