require_relative "../lib/php_pecl_formula"

class PhpAT81Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.2.1.tgz"
  sha256 "ef4cb3c228192798874e4530cccceee76840cc80821909740088a1e1a8f00445"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 ventura:  "5c6ce6b9d2082fc2fe5ae4ffe34718964bf437903eb4ac83b9873fb3515a0be2"
    sha256 monterey: "331c4ad5f2513587774cf46ecd785d3b50191d8ce2f0798a19aa75c7a1ae2c16"
    sha256 big_sur:  "9ab12f6d4063c032aa1dcbfe5f7f27782538b59f61fc50473c5444818f89283a"
  end

  def extension_type
    "zend_extension"
  end
end
