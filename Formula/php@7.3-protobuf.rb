require_relative "../lib/php_pecl_formula"

class PhpAT73Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.17.0.tgz"
  sha256 "26c9baaf5da3604aa5f57c0bf1badd90ff91e08a2fd656b2fbc21691aee4ca56"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "0747336d14c406bd53e573c0066470763b5f110c3a94e4d43c0ed1a36e7d9d4f"
    sha256 cellar: :any_skip_relocation, catalina: "3cad89b655fbc78a416af115ae5b5a44d229cd08a0b863e9476022c6b8281045"
    sha256 cellar: :any_skip_relocation, mojave:   "f151c5b57b51a2f30d45c67676f25374396d95f3ae4ce71db411c5356d84c0ea"
  end
end
