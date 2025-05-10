require_relative "../lib/php_pecl_formula"

class PhpAT82Phalcon < PhpPeclFormula
  extension_dsl "Phalcon is a full stack PHP framework offering low resource consumption and high performance"

  url "https://pecl.php.net/get/phalcon-5.9.3.tgz"
  sha256 "2b1983f09b56fc2779509a8ac1df776c368782538a7ef6601c0d4aef9892fe83"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "097fbcdb6b754d824870897b89f4a18154271f5180dff2e3f874697190ee60c4"
    sha256 cellar: :any_skip_relocation, ventura: "73392a823cc057d0ef47a86fa6062e0e22ac408c35eee0ec6b9db6722e1e8aa6"
  end

  deprecate! date: "2026-12-31", because: :unsupported
end
