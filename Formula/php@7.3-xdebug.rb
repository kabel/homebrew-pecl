require_relative "../lib/php_pecl_formula"

class PhpAT73Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.0.1.tgz"
  sha256 "0b95317153a2254f3da1fc9010fdffc40c9eec232be3ede088ec4c9bd94049b5"
  license "PHP-3.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "70128753d1f9cd0e836a39d89b79bf87c14e72b5e53dd93100fdb3a999e25a1d" => :catalina
    sha256 "1904d38357ba954e3f449ab4831ef4b3bca5e81c8913a804d550755e9dfad6f5" => :mojave
  end

  def extension_type
    "zend_extension"
  end
end
