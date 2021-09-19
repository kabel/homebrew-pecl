require_relative "../lib/php_pecl_formula"

class PhpAT74Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.18.0.tgz"
  sha256 "598305799f14aa9e947bbc39679778c374d77f2c93a39ab3dd3fa4f78f68cdad"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "b24cda48a89796febb2c0921dad16a75725cc142865400ab9821be25ffb691eb"
    sha256 cellar: :any_skip_relocation, catalina: "f6da8e9f1dab3d62057ea536d912dbc878f1632d6f97a43e539b7d45ed8973ef"
    sha256 cellar: :any_skip_relocation, mojave:   "a8026963ddcc332f03a159f1db219a7fffc646817af436bb3382b80c7fbead8e"
  end
end
