require_relative "../lib/php_pecl_formula"

class PhpAT71Amqp < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/amqp-1.9.4.tgz"
  sha256 "b66b8b8264749cb7a69ae4d09665dad1559b6c4f01430206c8e4187bcd8c782d"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "20e8598e63bd6f85f5961cac1f9faa83a33f3830c08261dd11cc29246d59b05a" => :mojave
    sha256 "b097f08306f3bd1d5203bd3bfbe4fa118c07fb6e3be4bab8072f8772ad113a92" => :high_sierra
  end

  depends_on "rabbitmq-c"
end
