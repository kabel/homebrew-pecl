require File.expand_path("../lib/php_pecl_formula", __dir__)

class PhpAT71Redis < PhpPeclFormula
  extension_dsl "Redis extension"

  url "https://pecl.php.net/get/redis-5.0.2.tgz"
  sha256 "4e18d7ebe032a562c358d79f94efa5f187ea90db7a56ef648476e24f4fe0b72c"
end
