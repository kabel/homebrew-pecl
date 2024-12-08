require_relative "../lib/php_pecl_formula"

class PhpAT83Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.16.tgz"
  sha256 "8bf25d465abc7973d9e2c9a3039a5f8eea635b23bc1477017ff3999ff95836da"
  license "BSD-3-Clause"

  deprecate! date: "2027-12-31", because: :unsupported

  conf_order "05"
end
