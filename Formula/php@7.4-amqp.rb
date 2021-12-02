require_relative "../lib/php_pecl_formula"

class PhpAT74Amqp < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/amqp-1.11.0.tgz"
  sha256 "dc5212b4785f59955118a219bbfbcedb7aa6ab2a91e8038a0ad1898f331c2f08"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "1257d6499baf2ffb5af5da68b056808193182f9a037500c2620259d9d335820d"
    sha256 catalina: "4a5e637c175e1f4284e306f43607cac722f247307d11a2bb05fa2046a94758d9"
  end

  depends_on "rabbitmq-c"
end
