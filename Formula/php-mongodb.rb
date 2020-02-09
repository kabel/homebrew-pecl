require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.7.1.tgz"
  sha256 "e4931b3545ba1facab1859c34774c280f37b91579555b2c44cb7e822e2396c53"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "67b21566fbce922567ff5effaef2b6fba0179d3e0d0f11d548e1c260bb419574" => :mojave
    sha256 "d2e1f17c7989d0aec4d7b95d0e256b925de89b8d7f9dd76cc3c07d33ad1f26e6" => :high_sierra
  end

  depends_on "icu4c"
  depends_on "snappy"
end
