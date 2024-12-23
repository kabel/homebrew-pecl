require_relative "../lib/php_pecl_formula"

class PhpAT82Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.4.0.tgz"
  sha256 "89667b8d04aaf04c023eb109900e1cce97ca39f97f2f3f24199630cc0e1cc77d"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 sonoma:  "c5bd2f87ef62f876db849483b85b105bd1789a7d27e43195c0e5fc5d7fc72e9a"
    sha256 ventura: "206ddcb0b393efffe497bdc3171926d8bc6d53072454deab230546fcddb02fe2"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  def extension_type
    "zend_extension"
  end
end
