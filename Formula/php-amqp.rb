require_relative "../lib/php_pecl_formula"

class PhpAmqp < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/amqp-1.10.2.tgz"
  sha256 "0ebc61052eb12406dddf5eabfe8749a12d52c566816b8aab04fb9916d0c26ed2"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "8b4697ddd2ca21d9f9972acd826533515a75a13f8ba1f72861b8bfc706bd5728" => :catalina
    sha256 "45922f8f5a8cd1cd7b079715c4e8c5b131f24097cb70d4d513254ff3d3c4f013" => :mojave
  end

  depends_on "rabbitmq-c"
end
