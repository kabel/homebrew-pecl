require_relative "../lib/php_pecl_formula"

class PhpAT72Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.9.7.tgz"
  sha256 "390ea712e90e942ed2c3bd8716efe7e31965e0480ac96d44f9d0dce022d7909a"
  license "PHP-3.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "dac90f1ffcfc86cf4b84c460b8055b55d44d46b2b7add3d4b62b3426e79a864f" => :catalina
    sha256 "273aa6d17875be1ddfe4133a229eec65ec62196624178b36d8164a037ad7f843" => :mojave
  end

  def extension_type
    "zend_extension"
  end
end
