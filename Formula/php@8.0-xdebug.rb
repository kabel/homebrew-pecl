require_relative "../lib/php_pecl_formula"

class PhpAT80Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.1.3.tgz"
  sha256 "37d0a6701955f5b3406c6c327b7702bd7c21462e656f3b4cce24a05258013d4e"
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
