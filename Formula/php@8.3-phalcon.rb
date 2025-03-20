require_relative "../lib/php_pecl_formula"

class PhpAT83Phalcon < PhpPeclFormula
  extension_dsl "Phalcon is a full stack PHP framework offering low resource consumption and high performance"

  url "https://pecl.php.net/get/phalcon-5.9.0.tgz"
  sha256 "7b8622bf7df5385e159dde3f41ed91bc6798726d8d725a46db8ba884651664d0"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "9a90874b1b5da0c03d5afc765d7508ed0adb435577609988d54aedb86f401289"
    sha256 cellar: :any_skip_relocation, ventura: "92781c135a592130a403f8783c10c6f496724f52f0fc9fae1a90c6ee18687237"
  end

  deprecate! date: "2027-12-31", because: :unsupported
end
