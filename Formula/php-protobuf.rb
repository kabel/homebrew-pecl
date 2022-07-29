require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.21.4.tgz"
  sha256 "be17e852eeb72a19dd7d04e2213b539daa85545f4e58c09a2dfffd3d48a82a44"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "e619a36129c9ebf8cffc9acba3fce9de7955655c486f63022a6e88cb49b87be8"
    sha256 cellar: :any_skip_relocation, big_sur:  "8aa9c74a6465b762182fcd6c629f88d937ddd467b2ec9c61d483288974e345cb"
    sha256 cellar: :any_skip_relocation, catalina: "dfbae96915973feb6f40e49d8cd05a5eb9b6a7998691ecd54aa79b08d33b4a83"
  end
end
