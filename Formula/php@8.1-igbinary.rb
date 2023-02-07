require_relative "../lib/php_pecl_formula"

class PhpAT81Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.13.tgz"
  sha256 "41baa76d917d878f1541b5d5089dddcc0245bce4a71de9a51ada01062c67807f"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "41dfb6cd263e161505c33705443b0c12fec0040d08c320e5757ecce8dad0d3d7"
    sha256 cellar: :any_skip_relocation, monterey: "3ddc214a63cac39ce8c33c13390b902e69e944af7eee56f568f1df63f2fe5a06"
    sha256 cellar: :any_skip_relocation, big_sur:  "e38375391c982138ebdf08eddc37a398a90ade6978a1d51ad33779ae860e3833"
  end

  conf_order "05"
end
