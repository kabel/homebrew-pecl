require_relative "../lib/php_pecl_formula"

class PhpAT83Raphf < PhpPeclFormula
  extension_dsl "Resource and persistent handles factory"

  url "https://pecl.php.net/get/raphf-2.0.1.tgz"
  sha256 "da3566db17422e5ef08b7ff144162952aabc14cb22407cc6b1d2a2d095812bd0"
  license "BSD-2-Clause"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any_skip_relocation, sonoma:  "3b3a53fd301fb1e272681f8f451b4a009da3dacf3cc1e7a3385d244b5bb7b1c2"
    sha256 cellar: :any_skip_relocation, ventura: "3786f2d4917f2c82e9d71309c12bdb1f21014abef12fd26d14f6d9e71282555e"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  conf_order "05"
end
