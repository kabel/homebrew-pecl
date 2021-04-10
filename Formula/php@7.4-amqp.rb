require_relative "../lib/php_pecl_formula"

class PhpAT74Amqp < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/amqp-1.10.2.tgz"
  sha256 "0ebc61052eb12406dddf5eabfe8749a12d52c566816b8aab04fb9916d0c26ed2"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 catalina: "80403841a8f0ba6f056c91aa25e377a13023b855ea1c352a06122b3c37423bf4"
    sha256 mojave:   "9a12a5275c01ad8fb002ab2b772ba07502bb5efe937c39b2c903f1eefec2dbfa"
  end

  depends_on "rabbitmq-c"
end
