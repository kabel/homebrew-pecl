require_relative "../lib/php_pecl_formula"

class PhpAT80Amqp < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/amqp-2.1.1.tgz"
  sha256 "c9b36f10c2e7b7da472440e21c35655c3bf41983b99bf1e438eac7d5bb1c2b45"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, monterey: "e72c9e89853047905c9ca3c2f1119a232a38f202fc34b0386c0f890407f10eb9"
    sha256               big_sur:  "72005bc2713a940c1ea1e635a31f661826fc6290082b717cd3476ce61974e6b6"
    sha256               catalina: "3e77988ef6a99621279005d8bfc3f7e5ee136b3e4cfba2e73e3fea7672632df2"
  end

  deprecate! date: "2022-11-26", because: :versioned_formula

  depends_on "rabbitmq-c"
end
