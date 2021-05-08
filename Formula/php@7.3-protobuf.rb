require_relative "../lib/php_pecl_formula"

class PhpAT73Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.16.0.tgz"
  sha256 "b26ff5c3a16c03fb7c5fd12a67473da46a7cf5145ed8e40f6ab86b3ff39e689c"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "0747336d14c406bd53e573c0066470763b5f110c3a94e4d43c0ed1a36e7d9d4f"
    sha256 cellar: :any_skip_relocation, catalina: "3cad89b655fbc78a416af115ae5b5a44d229cd08a0b863e9476022c6b8281045"
    sha256 cellar: :any_skip_relocation, mojave:   "f151c5b57b51a2f30d45c67676f25374396d95f3ae4ce71db411c5356d84c0ea"
  end
end
