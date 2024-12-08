require_relative "../lib/php_pecl_formula"

class PhpAT83Amqp < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/amqp-2.1.2.tgz"
  sha256 "0cb16d63752a0055de55a22062a6c1744908696d92268d76181284669025d993"
  license "PHP-3.01"

  deprecate! date: "2027-12-31", because: :unsupported

  depends_on "rabbitmq-c"
end
