require_relative "../lib/php_pecl_formula"

class PhpAT73Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.9.5.tgz"
  sha256 "775b1705109611b996d6a713fe14117a67846e157eb7dbf349bc0b055e861a10"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "a5c7f727dc83e7e5d68e4235352535be59bc93fb3cde06547e00379025cdea23" => :catalina
    sha256 "2a23b4b161613b9abdfd6e2563fcd7869a4e24b2fba73150ce155075f18a4da4" => :mojave
  end

  def extension_type
    "zend_extension"
  end
end
