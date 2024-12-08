require_relative "../lib/php_pecl_formula"

class PhpIgbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.16.tgz"
  sha256 "8bf25d465abc7973d9e2c9a3039a5f8eea635b23bc1477017ff3999ff95836da"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "0495ae5fc2d0cb56da55bac18f855e8e28fa9ece6c7f4bd3a6d4087da86e45b5"
    sha256 cellar: :any_skip_relocation, ventura: "d9d04cf91bc38098873dabcd0d629363bd50e5be0fd16dac4cea61d43690e047"
  end

  conf_order "05"
end
