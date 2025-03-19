require_relative "../lib/php_pecl_formula"

class PhpAT81Phalcon < PhpPeclFormula
  extension_dsl "Phalcon is a full stack PHP framework offering low resource consumption and high performance"

  url "https://pecl.php.net/get/phalcon-5.9.0.tgz"
  sha256 "7b8622bf7df5385e159dde3f41ed91bc6798726d8d725a46db8ba884651664d0"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
  end

  deprecate! date: "2025-12-31", because: :unsupported
end
