require_relative "../lib/php_pecl_formula"

class PhpAT81Amqp < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/amqp-2.1.1.tgz"
  sha256 "c9b36f10c2e7b7da472440e21c35655c3bf41983b99bf1e438eac7d5bb1c2b45"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "fd810062c7080570e22092ac3b8c9160a6006defd1115514fb5b7c096ff085d8"
    sha256 cellar: :any, monterey: "ea230db87441499707f17ab137e6cd8a60d7e8777c47e54820b08a7badbef31d"
    sha256 cellar: :any, big_sur:  "a5cedc5429dc7bb8e1b1ff985c851ffd942e998b80ca8e40206deedccca26ae9"
  end

  deprecate! date: "2024-11-25", because: :unsupported

  depends_on "rabbitmq-c"
end
