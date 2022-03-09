require_relative "../lib/php_pecl_formula"

class PhpAT74Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.1.3.tgz"
  sha256 "37d0a6701955f5b3406c6c327b7702bd7c21462e656f3b4cce24a05258013d4e"
  license "PHP-3.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "68ad2d41e30471e3006509f828a35c3823c3c4f696a84acc5ab355cb643a99d2"
    sha256 catalina: "d08a021e391d3a4a49ec7a81eb4be34e6b7736681adabc0a63498f7a1c041c24"
  end

  def extension_type
    "zend_extension"
  end
end
