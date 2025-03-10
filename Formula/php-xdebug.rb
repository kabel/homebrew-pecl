require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.4.2.tgz"
  sha256 "a043888c86e1526ac5ddb220d37ed3a1809e79a16bbb059b9c7e2d2f83b43cc1"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 sonoma:  "fbff7e48c7b2851855f16d7e357ca077d85c775634995ef7f949929b8682cbfc"
    sha256 ventura: "1bdac4e525cbcc2240cdbd6c1a51db0b4c0af1e9f2cf9988001c1e9292454e79"
  end

  def extension_type
    "zend_extension"
  end
end
