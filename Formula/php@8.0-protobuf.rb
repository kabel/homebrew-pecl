require_relative "../lib/php_pecl_formula"

class PhpAT80Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.19.3.tgz"
  sha256 "7ef8a2a060cce94c969e42d22dc5da68e81682a29e32a9a7f5e6840d40fe2c18"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "e52f49b0b072eeced372df04e3615048fbb68bd22cff4beab2818199a99ab011"
    sha256 cellar: :any_skip_relocation, catalina: "328351ec532ce0577efe41422b52eb5c7404b9d7e2429c475b0135bfb52ac964"
  end
end
