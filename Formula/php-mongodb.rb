require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.5.5.tgz"
  sha256 "a6da3985dd772e3b6c8dde38aa18f3480fba973aaaa41bd4ceb2c6c9c7e4fe3e"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "a1cdad3f8811b777f2e2002e44d7221e3ec1d3da98b02f4baecf6593e7669c35" => :mojave
    sha256 "d63180eec0723802172c41c8f136bc157508a7843e6e18a1f02ca0ddb6ed8858" => :high_sierra
  end

  devel do
    url "https://pecl.php.net/get/mongodb-1.6.0alpha2.tgz"
    sha256 "281e69e4ba4a1bff8b1f586891f87c6ceeace50bb317776e6d2c942c8b0caa05"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
