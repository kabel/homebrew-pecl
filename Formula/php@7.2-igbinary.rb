require_relative "../lib/php_pecl_formula"

class PhpAT72Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.1.6.tgz"
  sha256 "b9bf87dc4d861c6769ae2a13b085395e2741505c629895ec4559781a5031fdea"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "8c30046c60837def589e1f14c2545b38046c94427fb1f3ee09265e672f66adcd" => :catalina
    sha256 "480025c8c1d13f8ce7cb7f1047f700fa29fa9c4d4f85f3f34ea6645558f3204f" => :mojave
  end
end
