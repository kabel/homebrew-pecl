require_relative "../lib/php_pecl_formula"

class PhpAT80Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.6.tgz"
  sha256 "ca32e395ecdb4447a69d5ea51b35feb19c3bc5759b46896fef6f7e2ca41a8e43"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "740e1028a9cbd215cc0a1817bad04c16f2a805e2c7d86d8eb8fa4ed0ff00781a"
    sha256 cellar: :any_skip_relocation, catalina: "996e53ae9819bca6b3e0429132525d4c212601bbb35b27653f058783bf6e43d0"
  end
end
