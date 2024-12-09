require_relative "../lib/php_pecl_formula"

class PhpAT83Raphf < PhpPeclFormula
  extension_dsl "Resource and persistent handles factory"

  url "https://pecl.php.net/get/raphf-2.0.1.tgz"
  sha256 "da3566db17422e5ef08b7ff144162952aabc14cb22407cc6b1d2a2d095812bd0"
  license "BSD-2-Clause"

  deprecate! date: "2027-12-31", because: :unsupported

  conf_order "05"
end
