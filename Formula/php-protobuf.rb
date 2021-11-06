require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.19.1.tgz"
  sha256 "9003cd3e7bdb0ab9862133371e3a6c9fad9301257c78d0a2cc537cfb5f88e9b6"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "bb0012a725adefcf82bab89d6da5711e6efd0a9c98c260205a14d936c507271d"
    sha256 cellar: :any_skip_relocation, catalina: "2e08088df25ec3131441bcf93e3db7bb7fd0a2f78faba582c7f5bacfbae771bc"
    sha256 cellar: :any_skip_relocation, mojave:   "8754f9ccec0293d6385b960d05417b88dcd40ef2082eae94ef8b804b2cb28836"
  end
end
