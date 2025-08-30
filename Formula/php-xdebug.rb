require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.4.5.tgz"
  sha256 "f58442306ce55fe3b811c31759a247242989164f2a7933f05c8d59b06665b9c9"
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
