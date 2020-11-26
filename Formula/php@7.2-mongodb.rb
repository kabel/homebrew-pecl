require_relative "../lib/php_pecl_formula"

class PhpAT72Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.9.0.tgz"
  sha256 "1a9e7117b749c2dd63bd3493bf38c24a9acd11646ec96a0d92ba6380eee0ab9a"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "eb1620fc61caa5232e803e2c1845d00eb7f75a2455e5860a3aceec29a3a706fe" => :catalina
    sha256 "4979ee2b701b9e0af0c0047b9260e51ab8447134994fdccf96c899006b698c37" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
