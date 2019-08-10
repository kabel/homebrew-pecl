require_relative "../lib/php_pecl_formula"

class PhpAT71Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.5.5.tgz"
  sha256 "a6da3985dd772e3b6c8dde38aa18f3480fba973aaaa41bd4ceb2c6c9c7e4fe3e"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "ade23a78404294dbc899323d50564925ec5ad3f41d5e4adb2e87a6aaf54c9871" => :mojave
    sha256 "ec1f3f35051a37ef2fee2f346d54d055f592f043df62d8a78983cb3a9c847f2d" => :high_sierra
  end

  devel do
    url "https://pecl.php.net/get/mongodb-1.6.0alpha2.tgz"
    sha256 "281e69e4ba4a1bff8b1f586891f87c6ceeace50bb317776e6d2c942c8b0caa05"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
