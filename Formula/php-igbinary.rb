require_relative "../lib/php_pecl_formula"

class PhpIgbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.1.tgz"
  sha256 "601620cffd3b3e559620099c0569b8c4247f029ec18adc0206bf26f8e35753db"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "9ea9c0c1d74b714b49aba8a054ca7b9baf85f336f6aa88e5a7d0a7afe8324238" => :catalina
    sha256 "f2c59b7b9fc30f85e5c9235238d5bc51af6745d0e402390bfdb1866f7d02d160" => :mojave
  end
end
