require_relative "../lib/php_pecl_formula"

class PhpAT73Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.9.0.tgz"
  sha256 "1a9e7117b749c2dd63bd3493bf38c24a9acd11646ec96a0d92ba6380eee0ab9a"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "9e4a5a15032adc6c01b66f3cc7d049eecc1fb7f7f8b0f7e45a841a8d07711193" => :catalina
    sha256 "4c9d668f7fe77cef4f8a735649eb77eafca2bf7d56873d9e9907efdaaf5b51d1" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
