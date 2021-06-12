require_relative "../lib/php_pecl_formula"

class PhpAT73Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.3.tgz"
  sha256 "c0957f6e6d9aa96358fd5fbd8c1f919470511b7287ba305bc938cc3919c4cab9"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "669121a7323dff40752ceeb228860260ccfb40ce8889281db90e65fe22d25cc6"
    sha256 cellar: :any_skip_relocation, catalina: "7c40efc0d1b05b3e9fab152be2b78af959a9fefcceebd38a8d004946374a5949"
    sha256 cellar: :any_skip_relocation, mojave:   "ac2b8cc0905ada35401447d9c5dec7cf49433e08b377dabb9d4d929e5bcbff00"
  end
end
