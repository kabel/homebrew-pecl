require_relative "../lib/php_pecl_formula"

class PhpAT73Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.9.4.tgz"
  sha256 "fbe2f5990c2888093f0e0921f75004c47cba13368df94f290b4698193f6a7575"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "0184c1e25d9560a957c1fa229324968433bf2c1fb379088a429c526546440bd1" => :catalina
    sha256 "bc6a5a6dda01c0d7e1f6f856366a9abea295ea2c4143c64e7c4c36d57779f127" => :mojave
  end

  def extension_type
    "zend_extension"
  end
end
