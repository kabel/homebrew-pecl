require_relative "../lib/php_pecl_formula"

class PhpAT80Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.1.4.tgz"
  sha256 "4195926f9f6c4e802ff749bb2ca85ac50636719a72e5389e372e35ef523505f9"
  license "PHP-3.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 monterey: "0a506271d4da235262e87432dc800b71e32907932d3663afd2948426dd2d7756"
    sha256 big_sur:  "ec819a2c1aaed5847160234c5969e92938279dfb37dbe7e05d7d0f7e91c10556"
    sha256 catalina: "7602152ee85da1a03a86bb09870437f4a48f005d05896ff7b1c86d0af7b8dca4"
  end

  def extension_type
    "zend_extension"
  end
end
