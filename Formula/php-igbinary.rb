require_relative "../lib/php_pecl_formula"

class PhpIgbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.1.tgz"
  sha256 "601620cffd3b3e559620099c0569b8c4247f029ec18adc0206bf26f8e35753db"
  revision 1
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "3bbff2b48e900d306cd1d2ec6a80bf8185526dced9ac4da71bd1f68fbd80ac3e"
    sha256 cellar: :any_skip_relocation, catalina: "a5e4e7d20aa730e04f07396c73b3791539cd6bca54871cf276aaf31aeb7a19ef"
    sha256 cellar: :any_skip_relocation, mojave:   "18d4326c51d027d5df6018660fe5135c0d84193544f63e25ef16e072713143e9"
  end
end
