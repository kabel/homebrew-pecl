require_relative "../lib/php_pecl_formula"

class PhpAT74Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-3.0.2.tgz"
  sha256 "096d46dec061341868d3e3933b977013a592e2e88992b2c0aba7fa52f87c4e17"
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
