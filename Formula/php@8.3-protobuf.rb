require_relative "../lib/php_pecl_formula"

class PhpAT83Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-4.32.0.tgz"
  sha256 "4ae29e01061418df1b0b961f55f29561d6dc506ff9806117e8ae5d4ecf640ccf"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "1ac0e71ac789c87606e4c699090bdff0c41ba0fb3692d2e15f0d08f10bc2a134"
    sha256 cellar: :any_skip_relocation, ventura: "63187cc8ca6d67d591a1e60d4b9962a66043cc23633605eeac89f19cfe5b090d"
  end

  deprecate! date: "2027-12-31", because: :unsupported
end
