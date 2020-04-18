require_relative "../lib/php_pecl_formula"

class PhpAT72Amqp < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/amqp-1.10.2.tgz"
  sha256 "0ebc61052eb12406dddf5eabfe8749a12d52c566816b8aab04fb9916d0c26ed2"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "7b0043fd24b56cd5fc3cb53e5f8b025cbacefe442a0e839d8b6560b7fcd5087e" => :catalina
    sha256 "59a61c65aa3d3ae3390c1c96008e3cf0ef83b93d4f69d8ee227c433b1863a7fc" => :mojave
  end

  depends_on "rabbitmq-c"
end
