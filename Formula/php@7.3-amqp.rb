require_relative "../lib/php_pecl_formula"

class PhpAT73Amqp < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/amqp-1.10.2.tgz"
  sha256 "0ebc61052eb12406dddf5eabfe8749a12d52c566816b8aab04fb9916d0c26ed2"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "d750ee519832efebffdcff14fb25f65df944e9e651b02fe19e0d3c8e14a4affc" => :catalina
    sha256 "32779b26cc8ac7e22dbbc52347f24a633545e6e8b92eb5e2169a4696dda33e18" => :mojave
  end

  depends_on "rabbitmq-c"
end
