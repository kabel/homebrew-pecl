require_relative "../lib/php_pecl_formula"

class PhpPhalcon < PhpPeclFormula
  extension_dsl "Phalcon is a full stack PHP framework offering low resource consumption and high performance"

  url "https://pecl.php.net/get/phalcon-5.9.3.tgz"
  sha256 "2b1983f09b56fc2779509a8ac1df776c368782538a7ef6601c0d4aef9892fe83"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "221df2270b5fa4789ca8ed596d3dc5182fc41959877ef9b969b279797e5f9eef"
    sha256 cellar: :any_skip_relocation, ventura: "50e8438c80b05f40b2a05041e26ca335e268f0d76d35b01c49d497f90fc62970"
  end
end
