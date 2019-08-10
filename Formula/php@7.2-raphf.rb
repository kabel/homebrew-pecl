require_relative "../lib/php_pecl_formula"

class PhpAT72Raphf < PhpPeclFormula
  extension_dsl "Resource and persistent handles factory"

  url "https://pecl.php.net/get/raphf-2.0.0.tgz"
  sha256 "95a59ea0dc3fc172805a6acd8327b122dd159b0a85b253826166457a05efa411"
  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "4f18bffc9be94604f707f96da1ccc7d892795ce6ffd1cab8094514174294f1b0" => :mojave
    sha256 "b98c1d76d57646cc5dc0f64ecfa5cea86afa0275b00620d68d8e065267de2a98" => :high_sierra
  end

end
