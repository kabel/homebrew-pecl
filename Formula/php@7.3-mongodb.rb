require_relative "../lib/php_pecl_formula"

class PhpAT73Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.9.0.tgz"
  sha256 "1a9e7117b749c2dd63bd3493bf38c24a9acd11646ec96a0d92ba6380eee0ab9a"
  license "Apache-2.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "13f67725541be4a626b5d2a92bb6ad8ddd91e21f7bedacefaed48bd28d4b31af" => :catalina
    sha256 "b9d5f36ef0f966b069e8c67ad3d37a8ea36be1b22b81a1113ceb695b447bf9c1" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
