require_relative "../lib/php_pecl_formula"

class PhpAT83Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.15.tgz"
  sha256 "eff099b0343b45fbe9765d4b3d441064ddefbbf9cfb7198487de9bda6b8f4907"
  license "BSD-3-Clause"

  deprecate! date: "2027-12-31", because: :unsupported

  conf_order "05"
end
