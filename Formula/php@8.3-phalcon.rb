require_relative "../lib/php_pecl_formula"

class PhpAT83Phalcon < PhpPeclFormula
  extension_dsl "Phalcon is a full stack PHP framework offering low resource consumption and high performance"

  url "https://pecl.php.net/get/phalcon-5.9.3.tgz"
  sha256 "2b1983f09b56fc2779509a8ac1df776c368782538a7ef6601c0d4aef9892fe83"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "9a90874b1b5da0c03d5afc765d7508ed0adb435577609988d54aedb86f401289"
    sha256 cellar: :any_skip_relocation, ventura: "92781c135a592130a403f8783c10c6f496724f52f0fc9fae1a90c6ee18687237"
  end

  deprecate! date: "2027-12-31", because: :unsupported
end
