require_relative "../lib/php_pecl_formula"

class PhpAT81Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-4.32.0.tgz"
  sha256 "4ae29e01061418df1b0b961f55f29561d6dc506ff9806117e8ae5d4ecf640ccf"
  license "BSD-3-Clause"

  deprecate! date: "2025-12-31", because: :unsupported

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "025153dce14683fc5e964dd7767c423afe2ae949064641d7357a7a0cc414253b"
    sha256 cellar: :any_skip_relocation, ventura: "1644111beb26c0a099a64438b0150b9d5b0a3a2c1270b1bfc0575aebef298fb5"
  end
end
