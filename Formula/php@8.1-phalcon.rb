require_relative "../lib/php_pecl_formula"

class PhpAT81Phalcon < PhpPeclFormula
  extension_dsl "Phalcon is a full stack PHP framework offering low resource consumption and high performance"

  url "https://pecl.php.net/get/phalcon-5.9.3.tgz"
  sha256 "2b1983f09b56fc2779509a8ac1df776c368782538a7ef6601c0d4aef9892fe83"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "541c89677b4e9eea6b6c201a83bdefcd93182a97def9ef820794936b8e9e1f59"
    sha256 cellar: :any_skip_relocation, ventura: "dc3b624d8b9cb445396456630e48cec9343e4370ae20d5d83c70b6b58d9660c9"
  end

  deprecate! date: "2025-12-31", because: :unsupported
end
