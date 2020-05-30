require_relative "../lib/php_pecl_formula"

class PhpAT73Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.9.6.tgz"
  sha256 "ab03b6014706491b393aa8d520b5bdaf6735a2f1bc12a7772b2916ef2646e454"

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
