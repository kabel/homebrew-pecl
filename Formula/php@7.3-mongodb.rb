require_relative "../lib/php_pecl_formula"

class PhpAT73Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.7.2.tgz"
  sha256 "11e1c4d8d786ddc6b2fa32da487d53eb274ba9d41a08ba5a14938b3d43652b02"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "eb945db40c08f5e4bc3254c751eee2dccbe6570d21969156daa3cfc4dc64e3e0" => :catalina
    sha256 "7667dd24bac152bb417becc4dc007dd7c365daa11bcdc6679391770b8eff8913" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
