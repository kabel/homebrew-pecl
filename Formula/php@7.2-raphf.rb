require_relative "../lib/php_pecl_formula"

class PhpAT72Raphf < PhpPeclFormula
  extension_dsl "Resource and persistent handles factory"

  url "https://pecl.php.net/get/raphf-2.0.1.tgz"
  sha256 "da3566db17422e5ef08b7ff144162952aabc14cb22407cc6b1d2a2d095812bd0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "4f18bffc9be94604f707f96da1ccc7d892795ce6ffd1cab8094514174294f1b0" => :mojave
    sha256 "b98c1d76d57646cc5dc0f64ecfa5cea86afa0275b00620d68d8e065267de2a98" => :high_sierra
  end
end
