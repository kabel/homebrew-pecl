require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.6.0.tgz"
  sha256 "8686639a5172a8bef01f3991c99eb8e62f4e256fa82da9ac5fc6ec60b474cb2f"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "a1cdad3f8811b777f2e2002e44d7221e3ec1d3da98b02f4baecf6593e7669c35" => :mojave
    sha256 "d63180eec0723802172c41c8f136bc157508a7843e6e18a1f02ca0ddb6ed8858" => :high_sierra
  end

  depends_on "icu4c"
  depends_on "snappy"
end
