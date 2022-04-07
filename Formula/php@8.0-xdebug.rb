require_relative "../lib/php_pecl_formula"

class PhpAT80Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.1.4.tgz"
  sha256 "4195926f9f6c4e802ff749bb2ca85ac50636719a72e5389e372e35ef523505f9"
  license "PHP-3.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 monterey: "4c70fa442593b5e4e1e628b53a72599cc33e3c2adcb57179d6ea6279ee82cd0e"
    sha256 big_sur:  "d2da943b9057014203450b9900ac3f05d195a21d38858b27875366c5badbd0c3"
    sha256 catalina: "2c346747bf9eea4e1600bde311789a32b9edb3878dec97a19b9a524a9afe70e7"
  end

  def extension_type
    "zend_extension"
  end
end
