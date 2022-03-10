require_relative "../lib/php_pecl_formula"

class PhpAT74Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.1.3.tgz"
  sha256 "37d0a6701955f5b3406c6c327b7702bd7c21462e656f3b4cce24a05258013d4e"
  license "PHP-3.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "74a126c018edea7e2a616445349c629505056392289f2ccf7b33074ad441493c"
    sha256 catalina: "a28a434e05d7bcf82c50cbd40a07e58059470733a7e6c415bb12c66dbb10d417"
  end

  def extension_type
    "zend_extension"
  end
end
