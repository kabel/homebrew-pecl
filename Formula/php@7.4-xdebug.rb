require_relative "../lib/php_pecl_formula"

class PhpAT74Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.1.4.tgz"
  sha256 "4195926f9f6c4e802ff749bb2ca85ac50636719a72e5389e372e35ef523505f9"
  license "PHP-3.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 monterey: "7c0102f24666623f036a545338111f575d016f151b7bc7d3393040fc1283d16e"
    sha256 big_sur:  "74a126c018edea7e2a616445349c629505056392289f2ccf7b33074ad441493c"
    sha256 catalina: "a28a434e05d7bcf82c50cbd40a07e58059470733a7e6c415bb12c66dbb10d417"
  end

  def extension_type
    "zend_extension"
  end
end
