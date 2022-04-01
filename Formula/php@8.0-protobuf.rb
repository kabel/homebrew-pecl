require_relative "../lib/php_pecl_formula"

class PhpAT80Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.20.0.tgz"
  sha256 "123af5ba4088ba4690ad12742f26ca2e5c9cc67d0db6cfa83f7ec8d0e7ad9baf"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "4e412ab9dafa2ab4ccba839a4ab8e480b8d1edf5213640ff3df5f0d9f702de87"
    sha256 cellar: :any_skip_relocation, big_sur:  "b57980842f999fc2a6ecbf174139ee44a6ad3f4069c66192eaad1b71298a0964"
    sha256 cellar: :any_skip_relocation, catalina: "0e9cc423aa9eb06e62e41eb212102ef90b260e0316650a357b1391eb427bbf74"
  end
end
