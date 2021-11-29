require_relative "../lib/php_pecl_formula"

class PhpIgbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.6.tgz"
  sha256 "ca32e395ecdb4447a69d5ea51b35feb19c3bc5759b46896fef6f7e2ca41a8e43"
  revision 1
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "5bc74edb2d7a846cce22d981f7c7dfc808cc437a83e83efeb2f784a39a8322ab"
    sha256 cellar: :any_skip_relocation, catalina: "bfd388dacb50e7b70867b683072153dc9e29b96affee07d7e38d850cc6dac183"
    sha256 cellar: :any_skip_relocation, mojave:   "c5f9180c8405aa6a4b976c3e1f5116867c9f469ced4c9b13effd6ea3083efa23"
  end
end
