require_relative "../lib/php_pecl_formula"

class PhpAT73Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.0.0.tgz"
  sha256 "845007e82c1d4e088770d1d87f5832aa3a767cb5a3664fc1615db62cecc3ca62"
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
