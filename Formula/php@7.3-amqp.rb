require_relative "../lib/php_pecl_formula"

class PhpAT73Amqp < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/amqp-1.10.0.tgz"
  sha256 "d5eb39c1cd92c9d50b0dc6529eaaf9b3b1c485d9ee2a97fd892606bd84c93309"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "d750ee519832efebffdcff14fb25f65df944e9e651b02fe19e0d3c8e14a4affc" => :catalina
    sha256 "32779b26cc8ac7e22dbbc52347f24a633545e6e8b92eb5e2169a4696dda33e18" => :mojave
  end

  depends_on "rabbitmq-c"
end
