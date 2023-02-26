require_relative "../lib/php_pecl_formula"

class PhpAT80Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.14.tgz"
  sha256 "6337147a4fb888072566674837bda9928ee06ee7f0114b4338b86c816232925d"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "a6d0776326500caaa5487dcd506ee38dfdaf7dbb3b5a142a6cb1659b68a707ed"
    sha256 cellar: :any_skip_relocation, monterey: "70d2d0294e21d5dc444771053a32889691b3447dd4f9f082d892a49a961827eb"
    sha256 cellar: :any_skip_relocation, big_sur:  "759ac131f9c87d8a0a7bee3256e45a29adf690ec8ee36459019f1a529b9d3197"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula

  conf_order "05"
end
