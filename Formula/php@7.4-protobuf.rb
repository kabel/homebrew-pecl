require_relative "../lib/php_pecl_formula"

class PhpAT74Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.21.5.tgz"
  sha256 "07ccad172509f1f2c1c0799a297c5f3b2d21ead4442e3a9ce48c54525fd8539c"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "2ea38ae9856c90e3ac1bb34ff4a8703200a074f3bcc224098ead28a713d36fc7"
    sha256 cellar: :any_skip_relocation, big_sur:  "b31cb5151ba8bce5acda001c5563da9479eecf95a929b634a3b0f18ade8ccd21"
    sha256 cellar: :any_skip_relocation, catalina: "d4f1555ba30a7ec8a09463e22c215fed16d8f92a81210e0d1daa9bff2bb4fa4c"
  end
end
