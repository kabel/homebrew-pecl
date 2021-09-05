require_relative "../lib/php_pecl_formula"

class PhpAT73Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.6.tgz"
  sha256 "ca32e395ecdb4447a69d5ea51b35feb19c3bc5759b46896fef6f7e2ca41a8e43"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "e8dfeb98b67fb31acb99e2ca449853ce8037bd7076b5808c6f8cdfc49cff923c"
    sha256 cellar: :any_skip_relocation, catalina: "91f98b54d92428bebd7cb75bd136de27d0946c4b11ec06311d228610e4cea102"
    sha256 cellar: :any_skip_relocation, mojave:   "bbb75eb93975fb3e81d8ed0be2841309acbbd01dcc1601ef971e62b04e864b54"
  end
end
