require_relative "../lib/php_pecl_formula"

class PhpAT81Amqp < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/amqp-1.11.0.tgz"
  sha256 "dc5212b4785f59955118a219bbfbcedb7aa6ab2a91e8038a0ad1898f331c2f08"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "fd810062c7080570e22092ac3b8c9160a6006defd1115514fb5b7c096ff085d8"
    sha256 cellar: :any, monterey: "ea230db87441499707f17ab137e6cd8a60d7e8777c47e54820b08a7badbef31d"
    sha256 cellar: :any, big_sur:  "a5cedc5429dc7bb8e1b1ff985c851ffd942e998b80ca8e40206deedccca26ae9"
  end

  depends_on "rabbitmq-c"
end
