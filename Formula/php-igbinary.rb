require_relative "../lib/php_pecl_formula"

class PhpIgbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.2.tgz"
  sha256 "2279bb6bdcf17e9cbda4253c558bb25d45399782d016c9f131caa124c0ba410c"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "3bbff2b48e900d306cd1d2ec6a80bf8185526dced9ac4da71bd1f68fbd80ac3e"
    sha256 cellar: :any_skip_relocation, catalina: "a5e4e7d20aa730e04f07396c73b3791539cd6bca54871cf276aaf31aeb7a19ef"
    sha256 cellar: :any_skip_relocation, mojave:   "18d4326c51d027d5df6018660fe5135c0d84193544f63e25ef16e072713143e9"
  end
end
