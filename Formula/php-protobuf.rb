require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.19.3.tgz"
  sha256 "7ef8a2a060cce94c969e42d22dc5da68e81682a29e32a9a7f5e6840d40fe2c18"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "2f19ae07266e95278ac0898e7fa778f6b1914afc0e92471ea404bea663747d73"
    sha256 cellar: :any_skip_relocation, catalina: "ec7a9b0ca406eb1c5571f891ff407b3c8314bae44422e194ed2ec90d201d5f94"
  end
end
