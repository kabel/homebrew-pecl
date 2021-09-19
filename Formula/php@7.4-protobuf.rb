require_relative "../lib/php_pecl_formula"

class PhpAT74Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.18.0.tgz"
  sha256 "598305799f14aa9e947bbc39679778c374d77f2c93a39ab3dd3fa4f78f68cdad"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "ed9d5fb75cbafbc3d53f234007076fd0a19970b210b7be4f99a5731065769ad8"
    sha256 cellar: :any_skip_relocation, catalina: "07ba74afd11c85036b32be1b459526010c6a6532b8c213834cf3e8c1a0695386"
    sha256 cellar: :any_skip_relocation, mojave:   "4fc12ae8e238e35bfe551424c601985e7f72395fd67169c600335738f67b8112"
  end
end
