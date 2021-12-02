require_relative "../lib/php_pecl_formula"

class PhpAT74Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.1.2.tgz"
  sha256 "083f6be1100df79ccbdf049dafc3930bab35f0eb80f9b19ac1ad84fa6779ccf3"
  license "PHP-3.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "d2c7920f9d987b97014a79bfe59f53eaada832225265be4323821e350bb4eed5"
    sha256 catalina: "6be58c2faf8b887eff5a02a26272e51281c7289918aee164a2f60090b5b9e11b"
  end

  def extension_type
    "zend_extension"
  end
end
