require_relative "../lib/php_pecl_formula"

class PhpAT72Amqp < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/amqp-1.10.0.tgz"
  sha256 "d5eb39c1cd92c9d50b0dc6529eaaf9b3b1c485d9ee2a97fd892606bd84c93309"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "7b0043fd24b56cd5fc3cb53e5f8b025cbacefe442a0e839d8b6560b7fcd5087e" => :catalina
    sha256 "59a61c65aa3d3ae3390c1c96008e3cf0ef83b93d4f69d8ee227c433b1863a7fc" => :mojave
  end

  depends_on "rabbitmq-c"

  configure_arg "--with-ssh2=#{Formula["libssh2"]}.opt_prefix"
end
