require_relative "../lib/php_pecl_formula"

class PhpAT82Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.17.0.tgz"
  sha256 "5e7db95103d73212ed0edf8887d92184baa5643476045cb899efbcf439847148"
  license "Apache-2.0"

  deprecate! date: "2025-12-08", because: :unsupported

  depends_on "icu4c"
  depends_on "snappy"
end
