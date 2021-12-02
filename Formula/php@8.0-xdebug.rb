require_relative "../lib/php_pecl_formula"

class PhpAT80Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.1.1.tgz"
  sha256 "9be3ae0fdb4dc4a4c68084626cddc56f12396487e309a8c8dd318f0f900d1a68"
  license "PHP-3.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "6e6a3dbad928f960a2dd0839fb51e6c20eb7b79781d66da21694e04734370b1d"
    sha256 catalina: "832b11f01472df0b19e08fe1c5c3c772601ddd81d97389094234e8438af839da"
  end

  def extension_type
    "zend_extension"
  end
end
