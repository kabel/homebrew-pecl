require_relative "../lib/php_pecl_formula"

class PhpAT73Amqp < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/amqp-1.10.2.tgz"
  sha256 "0ebc61052eb12406dddf5eabfe8749a12d52c566816b8aab04fb9916d0c26ed2"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "b8b87f72bb9f073d30ad7fde9086dcabf1d01ff71ed9b38d4305b844da910751" => :catalina
    sha256 "dbc5a5a142005a9ea5a79a4fd81bd84843741adaf6dfd7b1db5185921452c361" => :mojave
  end

  depends_on "rabbitmq-c"
end
