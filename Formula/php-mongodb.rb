require File.expand_path("../lib/php_pecl_formula", __dir__)

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.5.5.tgz"
  sha256 "a6da3985dd772e3b6c8dde38aa18f3480fba973aaaa41bd4ceb2c6c9c7e4fe3e"

  devel do
    url "https://pecl.php.net/get/mongodb-1.6.0alpha2.tgz"
    sha256 "281e69e4ba4a1bff8b1f586891f87c6ceeace50bb317776e6d2c942c8b0caa05"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
