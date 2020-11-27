require_relative "../lib/php_pecl_formula"

class PhpAT74Propro < PhpPeclFormula
  extension_dsl "Property proxy"

  url "https://pecl.php.net/get/propro-2.1.0.tgz"
  sha256 "7bba0653d90cd8f61816e13ac6c0f7102b4a16dc4c4e966095a121eeb4ae8271"
  license "BSD-2-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "c3531fc58cf330c72af1dfc832070a1d128dc74056e9e7a14dae2f44ebdf2b1a" => :catalina
    sha256 "d9b625c316d71006ba158bff338c6644638525b42f11fe6c33a0ee320f91df43" => :mojave
  end
end
