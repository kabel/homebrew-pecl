require_relative "../lib/php_pecl_formula"

class PhpAT74Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.19.1.tgz"
  sha256 "9003cd3e7bdb0ab9862133371e3a6c9fad9301257c78d0a2cc537cfb5f88e9b6"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "09bbcc81bc8965a43082b769cc12369ba16cdbb29b6299a123c0d547feb7ce98"
    sha256 cellar: :any_skip_relocation, catalina: "89c9a877eff09bc7c2cc4a157bdac6e7110d15f1cc4ef29b1b62152ebb4fb1d8"
    sha256 cellar: :any_skip_relocation, mojave:   "da128dd0b7bb04dc3df3002d3806b030b6a1ed54e0182102a516fcabbc0ceb6f"
  end
end
