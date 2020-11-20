require_relative "../lib/php_pecl_formula"

class PhpJsmin < PhpPeclFormula
  extension_dsl "Extension for JavaScript minification"

  url "https://pecl.php.net/get/jsmin-3.0.0.tgz"
  sha256 "f936ccd01df91eb73236ecfdacfd1e2d3de92e7e776ad5d0f3c6f65d17948783"
  license "PHP-3.01"
end
