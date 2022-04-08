require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.1.4.tgz"
  sha256 "4195926f9f6c4e802ff749bb2ca85ac50636719a72e5389e372e35ef523505f9"
  license "PHP-3.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 monterey: "0cdd342e1f02fa24d3d40a985fc461f9d49f29a765c7b6a223d1326f70dc05ba"
    sha256 big_sur:  "9ab59b693218ed54d81d28dd4c1beb986c8a65b510f56370660cb25b61d2328a"
    sha256 catalina: "6a24bf9fd0d4bf8bdb45cf775b2281eb4e88410beb76f99589189fbf583b8c7e"
  end

  def extension_type
    "zend_extension"
  end
end
