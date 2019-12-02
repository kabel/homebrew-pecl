require_relative "../lib/php_pecl_formula"

class PhpRaphf < PhpPeclFormula
  extension_dsl "Resource and persistent handles factory"

  url "https://pecl.php.net/get/raphf-2.0.1.tgz"
  sha256 "da3566db17422e5ef08b7ff144162952aabc14cb22407cc6b1d2a2d095812bd0"
  revision 1

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "41109c2d383f27824a7c191e4ef47087a9a662aa3cc4cccfdfc03864d9255b8c" => :mojave
    sha256 "44373a46e0d4bcb3c58a352e3db18c3332bf30bea8dad64c9024d1361a943b18" => :high_sierra
  end
end
