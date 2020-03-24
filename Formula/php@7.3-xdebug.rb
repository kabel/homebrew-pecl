require_relative "../lib/php_pecl_formula"

class PhpAT73Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.9.4.tgz"
  sha256 "fbe2f5990c2888093f0e0921f75004c47cba13368df94f290b4698193f6a7575"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "8f4a0ebc7cc237fec20967d82052a3c39e8559c7c14552206e53b08a9078f7ca" => :catalina
    sha256 "1306ad4f129e35099e1da298bfeff943e14200607e500d54f05dfff2a7a39fa2" => :mojave
  end

  def extension_type
    "zend_extension"
  end
end
