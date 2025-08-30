require_relative "../lib/php_pecl_formula"

class PhpProtobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-4.32.0.tgz"
  sha256 "4ae29e01061418df1b0b961f55f29561d6dc506ff9806117e8ae5d4ecf640ccf"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "305fa5f482f94230a18904bac56439ec3f166126b671cdd829558cc50759e0ff"
    sha256 cellar: :any_skip_relocation, ventura: "eb273896ce0de7f460b0030f4a514dd6c35ade259662c63076d8b663e981730e"
  end
end
