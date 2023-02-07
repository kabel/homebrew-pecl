require_relative "../lib/php_pecl_formula"

class PhpAT80Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.13.tgz"
  sha256 "41baa76d917d878f1541b5d5089dddcc0245bce4a71de9a51ada01062c67807f"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "309afedf56abb18b130f6306977c9e23b2f03fe7a52e3d41017a591fdacd31e7"
    sha256 cellar: :any_skip_relocation, monterey: "5c1c72b3347897a36f098ce6a9fdd266aade967855a16b2df5ebec965cdd0e53"
    sha256 cellar: :any_skip_relocation, big_sur:  "929da69ed668b517b7f4c73b15ba22ba70826c663951f95de3e1a98dedf2e90d"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula

  conf_order "05"
end
