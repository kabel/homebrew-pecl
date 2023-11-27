require_relative "../lib/php_pecl_formula"

class PhpAT82Amqp < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/amqp-2.1.1.tgz"
  sha256 "c9b36f10c2e7b7da472440e21c35655c3bf41983b99bf1e438eac7d5bb1c2b45"
  license "PHP-3.01"

  deprecate! date: "2025-12-08", because: :unsupported

  depends_on "rabbitmq-c"
end
