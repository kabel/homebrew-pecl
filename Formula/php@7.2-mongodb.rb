require_relative "../lib/php_pecl_formula"

class PhpAT72Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.9.0.tgz"
  sha256 "1a9e7117b749c2dd63bd3493bf38c24a9acd11646ec96a0d92ba6380eee0ab9a"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "bd0764d7c28f1570482153312a1534dfd99feb9d1a9212bebc65aca5d4483c4e" => :catalina
    sha256 "e0ada5fb344041add1db4bb319ffcc6867d6539b26472c4643a7f0ee5273c769" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
