require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.1.2.tgz"
  sha256 "083f6be1100df79ccbdf049dafc3930bab35f0eb80f9b19ac1ad84fa6779ccf3"
  license "PHP-3.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "7ca777a52a00ffc9cbdec9c8ca28f193f9c8f566598bc2572ad79ea3293fd72d"
    sha256 catalina: "4ba4c7daaf9919285d8806931daa8567760b7c103ffba7aa17b31bc46264a5a9"
  end

  def extension_type
    "zend_extension"
  end
end
