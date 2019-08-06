require_relative "../lib/php_pecl_formula"

class PhpAT72Amqp < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/amqp-1.9.4.tgz"
  sha256 "b66b8b8264749cb7a69ae4d09665dad1559b6c4f01430206c8e4187bcd8c782d"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "1df94412b1fc10bf3d5156618d7ab13393d2bc0423826075f351a8f346da193e" => :mojave
    sha256 "5ffe6d3f11254b2a0fc951c07e407be2370182e13af22bc8a4a367d45f5d5a6b" => :high_sierra
  end

  depends_on "rabbitmq-c"

  configure_arg "--with-ssh2=#{Formula["libssh2"]}.opt_prefix"
end
