require_relative "../lib/php_pecl_formula"

class PhpAT81Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.13.tgz"
  sha256 "41baa76d917d878f1541b5d5089dddcc0245bce4a71de9a51ada01062c67807f"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "7fcc2dbda6077db0d30c118c83c6679886b7fb7b081d8f9ed9b23246c1ad08f7"
    sha256 cellar: :any_skip_relocation, monterey: "27c1404aaefcd5d6f86972ee1c3a4f8c0abcf45795bb0f6d729007124086f8e4"
    sha256 cellar: :any_skip_relocation, big_sur:  "b3202a4b73eb3d2ec39634eeeba5fd44255f8f7007face49d982723a9825c861"
  end

  conf_order "05"
end
