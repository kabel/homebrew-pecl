require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.1.4.tgz"
  sha256 "4195926f9f6c4e802ff749bb2ca85ac50636719a72e5389e372e35ef523505f9"
  license "PHP-3.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 monterey: "3a1e09beedfe46ad3d7040bc823e3f9feb27185cee5e63cee29f7e1ec476f468"
    sha256 big_sur:  "92e2ee809721bd558258fbd2afacfef81d46144cd913f6c11a3eb75a98356520"
    sha256 catalina: "707a3c508775dccc0cca0275914a1ed28850170e7563e617e4be6df6721b02e5"
  end

  def extension_type
    "zend_extension"
  end
end
