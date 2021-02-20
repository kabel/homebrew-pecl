require_relative "../lib/php_pecl_formula"

class PhpAT73Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.15.1.tgz"
  sha256 "256aa1f17f86be673f05a6697ef2d0cc022b863ffb09f8ab9295280b6f94c2e4"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "b6d47daa15e88c2c5c3cad8b61b5995a8147104ddd3499987c3c228691add4e9"
    sha256 cellar: :any_skip_relocation, catalina: "1f550e8b8f8ee60941d931986f9e5d4a6d29b34a2f365f3f92aed7d7819f93d4"
    sha256 cellar: :any_skip_relocation, mojave:   "35df2d622c64ea7589f10a1e77399b1c0470af3231518ac47a00f0cec22d796f"
  end
end
