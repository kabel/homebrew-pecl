require_relative "../lib/php_pecl_formula"

class PhpAT81Protobuf < PhpPeclFormula
  extension_dsl "Google's language-neutral, platform-neutral, extensible mechanism for serializing structured data."

  url "https://pecl.php.net/get/protobuf-4.32.0.tgz"
  sha256 "4ae29e01061418df1b0b961f55f29561d6dc506ff9806117e8ae5d4ecf640ccf"
  license "BSD-3-Clause"

  deprecate! date: "2025-12-31", because: :unsupported

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "43cbfe1784136d2c028c07ad4188acbc973fdd7854ed01d9b69b8bf7fb5b4927"
    sha256 cellar: :any_skip_relocation, ventura: "7ec3bdae67e2044412db91bf8dfd198671a35e1e05432bab43cb388e4f972f6b"
  end
end
