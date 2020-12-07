require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.0.1.tgz"
  sha256 "0b95317153a2254f3da1fc9010fdffc40c9eec232be3ede088ec4c9bd94049b5"
  license "PHP-3.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "2d551856deb590e6db9a3db9b3060396bb0b335e73b60a7113d4d92dd92aa391" => :catalina
    sha256 "ce8affef9afb35165769d5e10c4c9c771e362b08da948ab8dcd26e3f1c836b75" => :mojave
  end

  def extension_type
    "zend_extension"
  end
end
