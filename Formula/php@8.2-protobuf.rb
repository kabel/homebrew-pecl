require_relative "../lib/php_pecl_formula"

class PhpAT82Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-4.32.0.tgz"
  sha256 "4ae29e01061418df1b0b961f55f29561d6dc506ff9806117e8ae5d4ecf640ccf"
  license "BSD-3-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "c598d0769896a100f94ae8d387f68ca6d746c41fa16b2fdea6d4e724812bde8b"
    sha256 cellar: :any_skip_relocation, ventura: "993bbd11d15b71ecb4152d3b831bbd1bdcffd13154aa5c1ec04665f4ec2afb0e"
  end

  deprecate! date: "2026-12-31", because: :unsupported
end
