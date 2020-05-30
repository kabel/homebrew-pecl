require_relative "../lib/php_pecl_formula"

class PhpAT72Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.9.6.tgz"
  sha256 "ab03b6014706491b393aa8d520b5bdaf6735a2f1bc12a7772b2916ef2646e454"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "c156a8b43d2ace69a3062bb150a432f601ed195b03a5e78b0e2b8b606683a018" => :catalina
    sha256 "daf3a1dbcc8f645322efb2da93c17d5b2d075ace14ad605e2229f5106934c16f" => :mojave
  end

  def extension_type
    "zend_extension"
  end
end
