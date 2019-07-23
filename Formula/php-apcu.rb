require File.expand_path("../lib/php_pecl_formula", __dir__)

class PhpApcu < PhpPeclFormula
  extension_dsl "APC User Cache"

  url "https://pecl.php.net/get/apcu-5.1.17.tgz"
  sha256 "6b11b477890a9c096ad856e0251920d1d8b9558b7d115256c027e0223755c793"
end
