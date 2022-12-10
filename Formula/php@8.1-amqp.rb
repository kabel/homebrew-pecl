require_relative "../lib/php_pecl_formula"

class PhpAmqp < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/amqp-1.11.0.tgz"
  sha256 "dc5212b4785f59955118a219bbfbcedb7aa6ab2a91e8038a0ad1898f331c2f08"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, monterey: "7ae87c8d8923e2fafe03d2da9cb5be1d3e96f50fe20a13c166ca8dbcc3780f91"
    sha256               big_sur:  "58900dadad5187c8b918131ed45122d3a4371d6d85aed1144b79031e45a39b6f"
    sha256               catalina: "bf8fa291787ee50969228afe567cd182c5bfdef1d011bea6c9d4d316d04dba58"
  end

  depends_on "rabbitmq-c"
end
