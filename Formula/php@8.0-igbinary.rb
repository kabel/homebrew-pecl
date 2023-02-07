require_relative "../lib/php_pecl_formula"

class PhpAT80Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.13.tgz"
  sha256 "41baa76d917d878f1541b5d5089dddcc0245bce4a71de9a51ada01062c67807f"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "95fbf00935cd06330600568b8e49eecac1c6350503cb6baac3a98d84e7441060"
    sha256 cellar: :any_skip_relocation, monterey: "a5f5843d06e57f66d99f5e799fc5c652301dfa5a900355d01349ccf463e1cb9f"
    sha256 cellar: :any_skip_relocation, big_sur:  "b863830e643dd1b3c3890bc79b042854009929142ee7c2b55f6f112a6c343a0c"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula

  conf_order "05"
end
