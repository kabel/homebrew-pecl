require_relative "../lib/php_pecl_formula"

class PhpAT72Amqp < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/amqp-1.10.2.tgz"
  sha256 "0ebc61052eb12406dddf5eabfe8749a12d52c566816b8aab04fb9916d0c26ed2"
  license "PHP-3.01"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "d5b0b040502adcfe7c29245579145ee0603d0c53b2bf447029ddb0dc0c8bf58e" => :catalina
    sha256 "fe93dfb9e2035eccd04827f89a89523c61985c7cacb49633e9467ccaaf3ba154" => :mojave
  end

  depends_on "rabbitmq-c"
end
