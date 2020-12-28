require_relative "../lib/php_pecl_formula"

class PhpIgbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.1.tgz"
  sha256 "601620cffd3b3e559620099c0569b8c4247f029ec18adc0206bf26f8e35753db"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "7f33f72c77758da3d55095db6e8bf0dbdecbc61161b2a01db459c7bbbc5e15bd" => :catalina
    sha256 "bb52dd99a8c2fd03eb0173e92d71ff7f786c413ca36b68a883e4f0078074dc6e" => :mojave
  end
end
