require_relative "../lib/php_pecl_formula"

class PhpAT74Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.19.3.tgz"
  sha256 "7ef8a2a060cce94c969e42d22dc5da68e81682a29e32a9a7f5e6840d40fe2c18"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "257a1b10921c39e49fbc2de039ab4cc93a56fbf6fa6dfe6c45397ed97f9330ac"
    sha256 cellar: :any_skip_relocation, catalina: "fb1828ea50be77e77a5a886ce0d77e584b46c7e0a4fbfdc35eceefc4ed980530"
  end
end
