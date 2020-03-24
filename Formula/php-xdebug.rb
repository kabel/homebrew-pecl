require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.9.4.tgz"
  sha256 "fbe2f5990c2888093f0e0921f75004c47cba13368df94f290b4698193f6a7575"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "6a4c09e9fd1f397453d213e53e412fb6a1c5e6d6751ed2aba18459e5b19c024a" => :catalina
    sha256 "b8b6950d8c6492944c166bd36ca66a1ce86bad7f5f38e42a3b399a5452d2cb64" => :mojave
  end

  def extension_type
    "zend_extension"
  end
end
