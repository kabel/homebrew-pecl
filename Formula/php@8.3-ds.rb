require_relative "../lib/php_pecl_formula"

class PhpAT83Ds < PhpPeclFormula
  extension_dsl "Data Structures for PHP"

  url "https://pecl.php.net/get/ds-1.5.0.tgz"
  sha256 "2b2b45d609ca0958bda52098581ecbab2de749e0b3934d729de61a59226718b0"
  license "MIT"

  deprecate! date: "2027-12-31", because: :unsupported
end
