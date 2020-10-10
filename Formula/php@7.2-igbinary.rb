require_relative "../lib/php_pecl_formula"

class PhpAT72Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.1.6.tgz"
  sha256 "b9bf87dc4d861c6769ae2a13b085395e2741505c629895ec4559781a5031fdea"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "a64572ed5833392b1368f85ee0daba31a0334b7e15340ce46147624f1cddeee8" => :catalina
    sha256 "7ea15bc749d292219eee8a1d97f5478cb4a911162cf750268fc6593a3b58e926" => :mojave
  end
end
