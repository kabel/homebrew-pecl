require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.6.1.tgz"
  sha256 "1560141933a36862ee4d65171d2cc371c9fd468f59f3bef94cf2903186253cc8"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "67b21566fbce922567ff5effaef2b6fba0179d3e0d0f11d548e1c260bb419574" => :mojave
    sha256 "d2e1f17c7989d0aec4d7b95d0e256b925de89b8d7f9dd76cc3c07d33ad1f26e6" => :high_sierra
  end

  depends_on "icu4c"
  depends_on "snappy"
end
