require_relative "../lib/php_pecl_formula"

class PhpAT74Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.0.0.tgz"
  sha256 "845007e82c1d4e088770d1d87f5832aa3a767cb5a3664fc1615db62cecc3ca62"
  license "PHP-3.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "e231d0b430c58ac659f73ad87d7f01ef1828071d9a78374aa3d30ce9197427e4" => :catalina
    sha256 "8d44355dd9819d43449e9e59c497973630d325e0df50331e6f92422374f4bf06" => :mojave
  end

  def extension_type
    "zend_extension"
  end
end
