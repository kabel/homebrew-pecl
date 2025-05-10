require_relative "../lib/php_pecl_formula"

class PhpAT81Phalcon < PhpPeclFormula
  extension_dsl "Phalcon is a full stack PHP framework offering low resource consumption and high performance"

  url "https://pecl.php.net/get/phalcon-5.9.3.tgz"
  sha256 "2b1983f09b56fc2779509a8ac1df776c368782538a7ef6601c0d4aef9892fe83"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "3a226169644554ae1514c74d76a12c16d17a9632dc155a62f442c1a8d9964a66"
    sha256 cellar: :any_skip_relocation, ventura: "f310decb8ff23475d3fba7e66a21742c632e7aa7f462c69a64164010cb21e88e"
  end

  deprecate! date: "2025-12-31", because: :unsupported
end
