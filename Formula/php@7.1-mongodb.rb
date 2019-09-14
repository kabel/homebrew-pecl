require_relative "../lib/php_pecl_formula"

class PhpAT71Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.6.0.tgz"
  sha256 "8686639a5172a8bef01f3991c99eb8e62f4e256fa82da9ac5fc6ec60b474cb2f"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "ade23a78404294dbc899323d50564925ec5ad3f41d5e4adb2e87a6aaf54c9871" => :mojave
    sha256 "ec1f3f35051a37ef2fee2f346d54d055f592f043df62d8a78983cb3a9c847f2d" => :high_sierra
  end

  depends_on "icu4c"
  depends_on "snappy"
end
