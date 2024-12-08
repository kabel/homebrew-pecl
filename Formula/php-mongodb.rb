require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.20.1.tgz"
  sha256 "614e57594918feb621f525e6516d59ce09b78f5172355ba8afb6c2207c1ce900"
  license "Apache-2.0"

  depends_on "icu4c"
  depends_on "openssl@3"
  depends_on "snappy"
  depends_on "zstd"
end
