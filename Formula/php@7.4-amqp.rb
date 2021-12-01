require_relative "../lib/php_pecl_formula"

class PhpAT74Amqp < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/amqp-1.11.0.tgz"
  sha256 "dc5212b4785f59955118a219bbfbcedb7aa6ab2a91e8038a0ad1898f331c2f08"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 catalina: "80403841a8f0ba6f056c91aa25e377a13023b855ea1c352a06122b3c37423bf4"
    sha256 mojave:   "9a12a5275c01ad8fb002ab2b772ba07502bb5efe937c39b2c903f1eefec2dbfa"
  end

  depends_on "rabbitmq-c"
end
