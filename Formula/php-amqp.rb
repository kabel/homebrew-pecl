require_relative "../lib/php_pecl_formula"

class PhpAmqp < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/amqp-2.1.1.tgz"
  sha256 "c9b36f10c2e7b7da472440e21c35655c3bf41983b99bf1e438eac7d5bb1c2b45"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "1c62e9a9f6447d12bf958983eb6b54c83ff1795b83ce04edeac07e39301244b6"
    sha256 cellar: :any, monterey: "e7647219000ad90fde21bc4ba355fc500138caa8297873407ecb8d988c92ae41"
    sha256 cellar: :any, big_sur:  "de13a59297d72afa02f6c2a6c5876fa8f82bed3238951efd85cd0fd546d7fab1"
  end

  depends_on "rabbitmq-c"
end
