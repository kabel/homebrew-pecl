require_relative "../lib/php_pecl_formula"

class PhpAT72Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.7.1.tgz"
  sha256 "e4931b3545ba1facab1859c34774c280f37b91579555b2c44cb7e822e2396c53"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "317563b5430fc47261a5b8f7e6b50f355d4e27f18bd55f8c37cd7f787898dbef" => :mojave
    sha256 "dd5fb353ce3cde7d3ce5161f274add3ff0b0209355aed51126164f3b1bb30772" => :high_sierra
  end

  depends_on "icu4c"
  depends_on "snappy"
end
