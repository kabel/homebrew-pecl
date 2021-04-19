require_relative "../lib/php_pecl_formula"

class PhpIgbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.2.tgz"
  sha256 "2279bb6bdcf17e9cbda4253c558bb25d45399782d016c9f131caa124c0ba410c"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "b3c62d292783f3c74ef53e1f5c3ad3ac2deb1965c6234c24e31232cc3ceccc11"
    sha256 cellar: :any_skip_relocation, catalina: "d99f99596aea4d22cdec397813f963e593f036a4b6af9b270b300ab3b9e2d2a9"
    sha256 cellar: :any_skip_relocation, mojave:   "71ea2b16c7b69bc7dc89e66ff255e886fc0eccb43978bd1a52828e04f1046225"
  end
end
