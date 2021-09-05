require_relative "../lib/php_pecl_formula"

class PhpAT74Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.6.tgz"
  sha256 "ca32e395ecdb4447a69d5ea51b35feb19c3bc5759b46896fef6f7e2ca41a8e43"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "1d47dac0d429946fd6cafc623b15f4d626b24b97ee1abb68a21180fcc6063577"
    sha256 cellar: :any_skip_relocation, catalina: "13a7c5627427306586559e8b949de47febd75a62d29d17abfe14cf7eab64f735"
    sha256 cellar: :any_skip_relocation, mojave:   "251a0558333743bd118235ffd7f4603e5cea3e07aedd5f510f407eb102dd7f12"
  end
end
