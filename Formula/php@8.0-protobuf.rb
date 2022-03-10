require_relative "../lib/php_pecl_formula"

class PhpAT80Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.19.4.tgz"
  sha256 "8a3a3e519cfe1e1dc5f0550999c5086ca04b92fe2de02588adb4547d4a7b65ba"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "b57980842f999fc2a6ecbf174139ee44a6ad3f4069c66192eaad1b71298a0964"
    sha256 cellar: :any_skip_relocation, catalina: "0e9cc423aa9eb06e62e41eb212102ef90b260e0316650a357b1391eb427bbf74"
  end
end
