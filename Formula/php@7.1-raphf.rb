require_relative "../lib/php_pecl_formula"

class PhpAT71Raphf < PhpPeclFormula
  extension_dsl "Resource and persistent handles factory"

  url "https://pecl.php.net/get/raphf-2.0.0.tgz"
  sha256 "95a59ea0dc3fc172805a6acd8327b122dd159b0a85b253826166457a05efa411"
  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "1e94949513eb9352cbf660f57b30fb03922f2ad841c1b516c59a8bce38e07bce" => :mojave
    sha256 "c033230e6e40ccd56e46b14b60d5efb0fbc6c5eb5323b63353b6f0f4a2f6bd96" => :high_sierra
  end

end
