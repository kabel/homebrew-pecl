require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.15.6.tgz"
  sha256 "9caa70247dd449ff7819446967883c82496971a6fa58208633badc4f66fb262b"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "563383b7b3b14d7f648388bb92f21c967fc18b27c24d44e01b3f991bc66b1a8c"
    sha256 cellar: :any_skip_relocation, catalina: "2e31e4aeeead1d74bb559e5671f9f5e51dea77f227d33b93aad5b672e51d0651"
    sha256 cellar: :any_skip_relocation, mojave:   "82544c87c936de9c30e7f3b62c61796a92d994a48d8c747f0182740d87db391d"
  end
end
