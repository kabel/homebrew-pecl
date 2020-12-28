require_relative "../lib/php_pecl_formula"

class PhpAT73Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.1.tgz"
  sha256 "601620cffd3b3e559620099c0569b8c4247f029ec18adc0206bf26f8e35753db"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "7af3f0c34e613fe0ac4eee5c170cb5e6b8c447f4fe47e69a4f3e47bc17566808" => :catalina
    sha256 "ca0731d8e4865007f5cfcc0461a50e47c8f8c42b63f67be474d2256fc8f316c6" => :mojave
  end
end
