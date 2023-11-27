require_relative "../lib/php_pecl_formula"

class PhpAT82Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.2.2.tgz"
  sha256 "f48777371f90cbb315ea4ea082a1ede6765bcfb35d7d6356ab8f71fd6dfcc157"
  license "PHP-3.0"

  deprecate! date: "2025-12-08", because: :unsupported

  def extension_type
    "zend_extension"
  end
end
