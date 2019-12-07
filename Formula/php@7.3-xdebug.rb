require_relative "../lib/php_pecl_formula"

class PhpAT73Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.8.1.tgz"
  sha256 "838be3974e2555bbbd796eb57c34840659815f23079417b5042e8b534fe61520"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "69923d8031f80faa429ece0dc1cc1ae3fda66a1dc3aa61fd86fecf04817b30ea" => :mojave
    sha256 "630634eb71d437bed05d91812fb2177bac27bc7ad7d8501b463aed74f6969931" => :high_sierra
  end

  def extension_type
    "zend_extension"
  end
end
