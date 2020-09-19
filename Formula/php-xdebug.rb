require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.9.7.tgz"
  sha256 "390ea712e90e942ed2c3bd8716efe7e31965e0480ac96d44f9d0dce022d7909a"
  license "PHP-3.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "1e0d85c95933c3dcb1720d426977bf15eecb66f7671a358ab4b4924cbf36e781" => :catalina
    sha256 "7a1141c54062d4057726ffd37a2d151b15d95638a1448b0d53f8f30a51cc29fc" => :mojave
  end

  def extension_type
    "zend_extension"
  end
end
