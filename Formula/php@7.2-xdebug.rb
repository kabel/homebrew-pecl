require_relative "../lib/php_pecl_formula"

class PhpAT72Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.0.0.tgz"
  sha256 "845007e82c1d4e088770d1d87f5832aa3a767cb5a3664fc1615db62cecc3ca62"
  license "PHP-3.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "814514920e42f60ce83d39fe9aeafc9b558960866ed5842a7b5e0da52f08c6c6" => :catalina
    sha256 "523aa77a3904934a5810f16b21db632e18aeacb513e33b112505f3005398d4bf" => :mojave
  end

  def extension_type
    "zend_extension"
  end
end
