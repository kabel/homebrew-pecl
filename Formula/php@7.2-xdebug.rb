require_relative "../lib/php_pecl_formula"

class PhpAT72Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.9.4.tgz"
  sha256 "fbe2f5990c2888093f0e0921f75004c47cba13368df94f290b4698193f6a7575"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "b94cf109b4e1df07e74de2979a6ab3787f556ac8b36e14e99c0bb49e70df2a0b" => :catalina
    sha256 "919328bee3c9a18325ae727ef0223a043b9fbd3b1fc9d47d9e2554b6faae98a7" => :mojave
  end

  def extension_type
    "zend_extension"
  end
end
