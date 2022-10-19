require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.21.8.tgz"
  sha256 "610f06f2c51703129107ff1675ac3d73b26f24108621fd680f93c1fca84e53c8"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "83c705cb646cf76aa5bf7bb9249fd4bc5341f89cbda73b49fad7b580b7b1c04f"
    sha256 cellar: :any_skip_relocation, big_sur:  "b37bbd4c89ddc0d7d6de165316346521749d6d46e95c4448f2ca96438d7b60aa"
    sha256 cellar: :any_skip_relocation, catalina: "90d68aa5216b0d52d8429515b99fc5058e3e6db3088e2e57159b169e1ebb90e8"
  end
end
