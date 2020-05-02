require_relative "../lib/php_pecl_formula"

class PhpAT72Xdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.9.5.tgz"
  sha256 "775b1705109611b996d6a713fe14117a67846e157eb7dbf349bc0b055e861a10"

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
