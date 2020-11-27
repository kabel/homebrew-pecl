require_relative "../lib/php_pecl_formula"

class PhpAT74Propro < PhpPeclFormula
  extension_dsl "Property proxy"

  url "https://pecl.php.net/get/propro-2.1.0.tgz"
  sha256 "7bba0653d90cd8f61816e13ac6c0f7102b4a16dc4c4e966095a121eeb4ae8271"
  license "BSD-2-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "63d9d86e5b832907ad27a4c3e373e9fa2d7cec61ccf1255fac4766d335b1f2ea" => :mojave
    sha256 "538f7656e5279927c8aab86d70cd4bfbefdd2462a1d7c08091f97ab86181c0b5" => :high_sierra
  end
end
