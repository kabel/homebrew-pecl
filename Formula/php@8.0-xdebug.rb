require_relative "../lib/php_pecl_formula"

class PhpAT80Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.2.1.tgz"
  sha256 "ef4cb3c228192798874e4530cccceee76840cc80821909740088a1e1a8f00445"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 ventura:  "4e6d0ce92f49eff2d56b196bf5752d98c2422c1227026516e108cbe0a6c8c7de"
    sha256 monterey: "454b476b77a78e56bbab9a83693fef8416ae14f868dc43d5cc15b1a2691e0739"
    sha256 big_sur:  "c9b7e336a332c51fb1ea17b38722e5f78e7339878df22925d1d82999a6a9c712"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula

  def extension_type
    "zend_extension"
  end
end
