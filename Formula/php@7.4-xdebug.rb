require_relative "../lib/php_pecl_formula"

class PhpAT74Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.0.1.tgz"
  sha256 "0b95317153a2254f3da1fc9010fdffc40c9eec232be3ede088ec4c9bd94049b5"
  license "PHP-3.0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "78012ce63cab82837d2d0a4f16cf0303eb2c446bc2e5c2a19bc956e3810e83b8" => :catalina
    sha256 "4506e3fae57dbae6c9548104d6b47027efc1c44c52b6a983556dd0ddd9ab0dda" => :mojave
  end

  def extension_type
    "zend_extension"
  end
end
