require_relative "../lib/php_pecl_formula"

class PhpXdebug < PhpPeclFormula
  extension_dsl "An extension to assist with debugging and development"

  url "https://pecl.php.net/get/xdebug-2.9.5.tgz"
  sha256 "775b1705109611b996d6a713fe14117a67846e157eb7dbf349bc0b055e861a10"

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
