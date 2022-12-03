require_relative "../lib/php_pecl_formula"

class PhpAT73Raphf < PhpPeclFormula
  extension_dsl "Resource and persistent handles factory"

  url "https://pecl.php.net/get/raphf-2.0.1.tgz"
  sha256 "da3566db17422e5ef08b7ff144162952aabc14cb22407cc6b1d2a2d095812bd0"
  license "BSD-2-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, mojave:      "07a3e229390dda43ed55e1ae3f872298ce30c653c7ca1076a1e5a6d6f4760c23"
    sha256 cellar: :any_skip_relocation, high_sierra: "3e75d4a2c2840e34520f9071133a799179673356d16f29bc640f7f4e0ab5047a"
  end

  disable! date: "2021-12-06", because: :versioned_formula
end
