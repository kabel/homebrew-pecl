require_relative "../lib/php_pecl_formula"

class PhpAT71Propro < PhpPeclFormula
  extension_dsl "Property proxy"

  url "https://pecl.php.net/get/propro-2.1.0.tgz"
  sha256 "7bba0653d90cd8f61816e13ac6c0f7102b4a16dc4c4e966095a121eeb4ae8271"
  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "f81ac6e01c25f495719c8e43154f53aa4a07e3af06c33d391a0f6fba69fda5a0" => :mojave
    sha256 "318666021fdc64cd77f09860e0f2582550d0f931a16b23157ef1896562b49bd6" => :high_sierra
  end

end
