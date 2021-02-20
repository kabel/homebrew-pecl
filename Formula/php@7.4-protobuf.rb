require_relative "../lib/php_pecl_formula"

class PhpAT74Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.15.1.tgz"
  sha256 "256aa1f17f86be673f05a6697ef2d0cc022b863ffb09f8ab9295280b6f94c2e4"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "b01afd9f400da85fab97a6f3a68f50522a113a5768e778a4209bcb89cb753494"
    sha256 cellar: :any_skip_relocation, catalina: "a11d75119e64f1dca7e0f99700c91af12fc6174a1a90989135cd330ec41d3aba"
    sha256 cellar: :any_skip_relocation, mojave:   "7f8cc3b448673f1e1392024dfdd1f101b764dd5dfb5fcdd6fcfe75ebf603dc8b"
  end
end
