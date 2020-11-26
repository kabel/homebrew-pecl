require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.0.0.tgz"
  sha256 "845007e82c1d4e088770d1d87f5832aa3a767cb5a3664fc1615db62cecc3ca62"
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
