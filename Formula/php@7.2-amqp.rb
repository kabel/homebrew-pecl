require File.expand_path("../lib/php_pecl_formula", __dir__)

class PhpAT72Amqp < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/amqp-1.9.4.tgz"
  sha256 "b66b8b8264749cb7a69ae4d09665dad1559b6c4f01430206c8e4187bcd8c782d"

  depends_on "rabbitmq-c"

  configure_arg "--with-ssh2=#{Formula["libssh2"]}.opt_prefix"
end
