require_relative "../lib/php_pecl_formula"

class PhpAT82Amqp < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/amqp-1.11.0.tgz"
  sha256 "dc5212b4785f59955118a219bbfbcedb7aa6ab2a91e8038a0ad1898f331c2f08"
  license "PHP-3.01"

  deprecate! date: "2025-12-08", because: :unsupported

  depends_on "rabbitmq-c"
end
