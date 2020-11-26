require_relative "../lib/php_pecl_formula"

class PhpAT72Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.0.0.tgz"
  sha256 "845007e82c1d4e088770d1d87f5832aa3a767cb5a3664fc1615db62cecc3ca62"
  license "PHP-3.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "c27017ae5af8b66797adfc662bad2d7faf0cb51053366abe3d613347cfbaca20" => :catalina
    sha256 "66677ff4e8d1a2ab9a90fe02ec1450910f440b873110ab6a69a46c3cc79aba8f" => :mojave
  end

  def extension_type
    "zend_extension"
  end
end
