require_relative "../lib/php_pecl_formula"

class PhpAT73Amqp < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/amqp-1.10.0.tgz"
  sha256 "d5eb39c1cd92c9d50b0dc6529eaaf9b3b1c485d9ee2a97fd892606bd84c93309"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "5f754181b4154e81b2f54bac6b3baccf796ac4ba24ad3db1c3686f123cd8dfab" => :mojave
    sha256 "0c5f792b30cefdaa93b72ae381f1e98892f6fabaeeadaea356c2e4a894078a97" => :high_sierra
  end

  depends_on "rabbitmq-c"
end
