require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.21.5.tgz"
  sha256 "07ccad172509f1f2c1c0799a297c5f3b2d21ead4442e3a9ce48c54525fd8539c"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, monterey: "b0d74b565e43868371c7ac432225e4369d9be7a0a4eb5049de602e285de307ff"
    sha256 cellar: :any_skip_relocation, big_sur:  "ccb53cef95f77e2d1c1c33416a8a6ee0c0936cc31b37021755f86b3a6df1ae6b"
    sha256 cellar: :any_skip_relocation, catalina: "9ac067f4f1ba09026bc25aae21f9fb49bdcc91123af8481de1ac848ed82fd48f"
  end
end
