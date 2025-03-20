require_relative "../lib/php_pecl_formula"

class PhpAT82Phalcon < PhpPeclFormula
  extension_dsl "Phalcon is a full stack PHP framework offering low resource consumption and high performance"

  url "https://pecl.php.net/get/phalcon-5.9.0.tgz"
  sha256 "7b8622bf7df5385e159dde3f41ed91bc6798726d8d725a46db8ba884651664d0"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "097fbcdb6b754d824870897b89f4a18154271f5180dff2e3f874697190ee60c4"
    sha256 cellar: :any_skip_relocation, ventura: "73392a823cc057d0ef47a86fa6062e0e22ac408c35eee0ec6b9db6722e1e8aa6"
  end

  deprecate! date: "2026-12-31", because: :unsupported
end
