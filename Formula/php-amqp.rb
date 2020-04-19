require_relative "../lib/php_pecl_formula"

class PhpAmqp < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/amqp-1.10.2.tgz"
  sha256 "0ebc61052eb12406dddf5eabfe8749a12d52c566816b8aab04fb9916d0c26ed2"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "4c18dde01de00fde6cdd6a5b036a226e9e479ac13989983cc6008caf0a5362cd" => :catalina
    sha256 "2afc0509549450a348d93f2ee903ff079f09d8b2d95127e33ec1b6ca0eec6ec3" => :mojave
  end

  depends_on "rabbitmq-c"
end
