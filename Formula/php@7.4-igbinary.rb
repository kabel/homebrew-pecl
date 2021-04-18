require_relative "../lib/php_pecl_formula"

class PhpAT74Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.2.tgz"
  sha256 "2279bb6bdcf17e9cbda4253c558bb25d45399782d016c9f131caa124c0ba410c"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "bef37f7eda847f24bf034a90b9385452dd9fe9fc9cb27e8f87d602e458e22184"
    sha256 cellar: :any_skip_relocation, catalina: "d546c77f9e039ea72e270240b62a584a6c3de5a520681ed0bf3f304afc2de88e"
    sha256 cellar: :any_skip_relocation, mojave:   "e7d493ebb46218216dc30e48ac43d2aafb1a3a39cdf917b31b78bc89e575240f"
  end
end
