require_relative "../lib/php_pecl_formula"

class PhpAT72Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.8.1.tgz"
  sha256 "838be3974e2555bbbd796eb57c34840659815f23079417b5042e8b534fe61520"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "1f929136932455ec53a5dd77cb322651764db7397f1ffa15aeb841b4def58a11" => :mojave
    sha256 "e6af662ddf5900be407d23c0bcf109dcb2894800fc41c8ac720a8dbef2c27520" => :high_sierra
  end

  def extension_type
    "zend_extension"
  end
end
