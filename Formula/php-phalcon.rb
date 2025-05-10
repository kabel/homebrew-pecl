require_relative "../lib/php_pecl_formula"

class PhpPhalcon < PhpPeclFormula
  extension_dsl "Phalcon is a full stack PHP framework offering low resource consumption and high performance"

  url "https://pecl.php.net/get/phalcon-5.9.3.tgz"
  sha256 "2b1983f09b56fc2779509a8ac1df776c368782538a7ef6601c0d4aef9892fe83"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "8701fe6e952fa5d86288f2f54e1f90ce36e757538dc100f560a6d2a79c9aacf3"
    sha256 cellar: :any_skip_relocation, ventura: "29baf87a42172727f74acd5f8365695f712460009370a51f377abbca947849da"
  end
end
