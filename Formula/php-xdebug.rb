require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.9.4.tgz"
  sha256 "fbe2f5990c2888093f0e0921f75004c47cba13368df94f290b4698193f6a7575"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "56613f253031a3950d16dd24247b148432435930864b331151ba6f62d3a97da2" => :catalina
    sha256 "5c17c32553bc06e494825c50e0e9e3164ce091a3a2e8ff862a4191f96c542a91" => :mojave
  end

  def extension_type
    "zend_extension"
  end
end
