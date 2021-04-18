require_relative "../lib/php_pecl_formula"

class PhpAT73Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.2.tgz"
  sha256 "2279bb6bdcf17e9cbda4253c558bb25d45399782d016c9f131caa124c0ba410c"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "dc8f16b380ab446a32842ff27cc1a1c9ac49506b8a83fd7c30f73d336364ef06"
    sha256 cellar: :any_skip_relocation, catalina: "2f019fe0364a444aceef4d64dbd9734d92118b9495ee7a5d7ef6a3be81c6e579"
    sha256 cellar: :any_skip_relocation, mojave:   "bf11ccb5845fe237e581cca5d545d59121f2791ce7e67766a90cf59c8291b181"
  end
end
