require_relative "../lib/php_pecl_formula"

class PhpAT80Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.2.1.tgz"
  sha256 "ef4cb3c228192798874e4530cccceee76840cc80821909740088a1e1a8f00445"
  license "PHP-3.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 ventura:  "4c184b443fd4ce9429413e9f76493a69957a31b9800c2ab0a5a1aaae25b7bb7c"
    sha256 monterey: "784d42adf5d699b25f3ead2f5db66419d1fb8db22ac37874c521a7cc983410de"
    sha256 big_sur:  "efa275e26779fb84fefc13ddff74e7b71b72144aaa960ddc5cbeca9fa2c808ef"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula

  def extension_type
    "zend_extension"
  end
end
