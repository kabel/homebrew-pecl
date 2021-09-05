require_relative "../lib/php_pecl_formula"

class PhpAT74Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.6.tgz"
  sha256 "ca32e395ecdb4447a69d5ea51b35feb19c3bc5759b46896fef6f7e2ca41a8e43"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "b370ac0e9d8a69062bbcaa8be5e945e5702cae7892ec3a40f151ec08e8d440bf"
    sha256 cellar: :any_skip_relocation, catalina: "4cd75bb490b20cdbe28b485157ae53bd86ce484415bce0a44985b053ec8b658f"
    sha256 cellar: :any_skip_relocation, mojave:   "9a248f45191130877c6398969973b353efcc8d2e33830d4c0f62275d8cf95dd6"
  end
end
