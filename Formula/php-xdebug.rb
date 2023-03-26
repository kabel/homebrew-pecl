require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.2.1.tgz"
  sha256 "ef4cb3c228192798874e4530cccceee76840cc80821909740088a1e1a8f00445"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 ventura:  "3d94fc71b8092ccae3a41b3ee6aa25db3db63db8dd4af2a0451663440a3eae58"
    sha256 monterey: "51d2645d2c46af1d202cbaf87ea28a8109e3fb45b2cd950bacf2adac97349557"
    sha256 big_sur:  "39e62ec75671aca2eb9ad7a30a0a6362b0ea6d2fcdce7305fcedfb2dff954dbd"
  end

  def extension_type
    "zend_extension"
  end
end
