require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.9.6.tgz"
  sha256 "ab03b6014706491b393aa8d520b5bdaf6735a2f1bc12a7772b2916ef2646e454"
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
