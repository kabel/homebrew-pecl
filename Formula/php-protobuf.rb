require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-3.25.1.tgz"
  sha256 "c1bcbd2671cb350355bf5b7f87f07a6813f11447ac6295cc53160756a9f385a6"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, ventura:  "be91bf40a4eb6b1cc05c0b3015da2176f1158c3b5e72f57fa1805b1a4f645cd2"
    sha256 cellar: :any_skip_relocation, monterey: "6b785540799742a6d43c376d2560c1e22a1f1314af179c9e844061eb829c3b94"
    sha256 cellar: :any_skip_relocation, big_sur:  "52c622ec3fc3b13bdd4751e3491d3dac4b89c1e7a9e7979c03eb1580b2b428b0"
  end
end
