require_relative "../lib/php_pecl_formula"

class PhpAT73Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.7.1.tgz"
  sha256 "e4931b3545ba1facab1859c34774c280f37b91579555b2c44cb7e822e2396c53"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "eb945db40c08f5e4bc3254c751eee2dccbe6570d21969156daa3cfc4dc64e3e0" => :catalina
    sha256 "7667dd24bac152bb417becc4dc007dd7c365daa11bcdc6679391770b8eff8913" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
