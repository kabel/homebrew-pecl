require_relative "../lib/php_pecl_formula"

class PhpAT80Amqp < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/amqp-1.11.0.tgz"
  sha256 "dc5212b4785f59955118a219bbfbcedb7aa6ab2a91e8038a0ad1898f331c2f08"
  license "PHP-3.01"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "72005bc2713a940c1ea1e635a31f661826fc6290082b717cd3476ce61974e6b6"
    sha256 catalina: "3e77988ef6a99621279005d8bfc3f7e5ee136b3e4cfba2e73e3fea7672632df2"
  end

  depends_on "rabbitmq-c"
end
