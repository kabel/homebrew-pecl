require_relative "../lib/php_pecl_formula"

class PhpAT83Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-4.29.1.tgz"
  sha256 "12cc3b38d055feb2eb4c6b4ca6e2c1e080906d06e9173eea2cc160ecd9d6374b"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "b028a5e901a39db00200d62945f5f2dc87b5dba6f739d593a5e01e982530e7c4"
    sha256 cellar: :any_skip_relocation, ventura: "4c58ddf0d6c09da0ef62e011d3c17df6737a12c1e19daf9b2c934bb0416a3972"
  end

  deprecate! date: "2027-12-31", because: :unsupported
end
