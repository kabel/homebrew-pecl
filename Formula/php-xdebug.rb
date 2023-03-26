require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.2.1.tgz"
  sha256 "ef4cb3c228192798874e4530cccceee76840cc80821909740088a1e1a8f00445"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 ventura:  "183fae890dfc238f6583fdf93406ccf2267b30c093b9035e53af027e09d05be5"
    sha256 monterey: "5d6eb1aecde2cab09f0e0b613ec1e86f8cdc5ca845c7810a1972a01bf5d62ec7"
    sha256 big_sur:  "0f9742b135b6a14324734503413379bd9cd59bbd33a11b819675a99a606d77c7"
  end

  def extension_type
    "zend_extension"
  end
end
