require_relative "../lib/php_pecl_formula"

class PhpAmqp < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/amqp-1.9.4.tgz"
  sha256 "b66b8b8264749cb7a69ae4d09665dad1559b6c4f01430206c8e4187bcd8c782d"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "6b755b128099baa93593df053f6790cc48f4685bdfc0072f8d4095829e6229f0" => :mojave
    sha256 "669af5deb69055e693a98a64f1bd39d538d27dcc8bfb6bf11259784dd0e57b43" => :high_sierra
  end

  depends_on "rabbitmq-c"
end
