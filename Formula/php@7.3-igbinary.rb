require_relative "../lib/php_pecl_formula"

class PhpAT73Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.2.tgz"
  sha256 "2279bb6bdcf17e9cbda4253c558bb25d45399782d016c9f131caa124c0ba410c"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "669121a7323dff40752ceeb228860260ccfb40ce8889281db90e65fe22d25cc6"
    sha256 cellar: :any_skip_relocation, catalina: "7c40efc0d1b05b3e9fab152be2b78af959a9fefcceebd38a8d004946374a5949"
    sha256 cellar: :any_skip_relocation, mojave:   "ac2b8cc0905ada35401447d9c5dec7cf49433e08b377dabb9d4d929e5bcbff00"
  end
end
