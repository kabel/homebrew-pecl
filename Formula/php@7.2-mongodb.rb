require_relative "../lib/php_pecl_formula"

class PhpAT72Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.6.1.tgz"
  sha256 "1560141933a36862ee4d65171d2cc371c9fd468f59f3bef94cf2903186253cc8"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "317563b5430fc47261a5b8f7e6b50f355d4e27f18bd55f8c37cd7f787898dbef" => :mojave
    sha256 "dd5fb353ce3cde7d3ce5161f274add3ff0b0209355aed51126164f3b1bb30772" => :high_sierra
  end

  depends_on "icu4c"
  depends_on "snappy"
end
