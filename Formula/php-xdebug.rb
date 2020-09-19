require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.9.7.tgz"
  sha256 "390ea712e90e942ed2c3bd8716efe7e31965e0480ac96d44f9d0dce022d7909a"
  license "PHP-3.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "83c8f4a81ee5d5356f742bad2d2adc0f5326b3e30d576f8a557588db9a642532" => :catalina
    sha256 "27e1dd9986b81e04911d88f60c58d1a509980bc525e5f728e974a3ce51ab5d50" => :mojave
  end

  def extension_type
    "zend_extension"
  end
end
