require_relative "../lib/php_pecl_formula"

class PhpAT83Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.4.0.tgz"
  sha256 "89667b8d04aaf04c023eb109900e1cce97ca39f97f2f3f24199630cc0e1cc77d"
  license "PHP-3.0"

  def extension_type
    "zend_extension"
  end
end
