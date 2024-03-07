require_relative "../lib/php_pecl_formula"

class PhpAT82Amqp < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/amqp-2.1.2.tgz"
  sha256 "0cb16d63752a0055de55a22062a6c1744908696d92268d76181284669025d993"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "b31406c7a700a334e586fd87417426eb43e9a91219fa262b32676cc29073aea2"
    sha256 cellar: :any, ventura:  "07876d5e5e8bd54b9f89fa71544d3e0e88506f38839689c9a52a571880f39eb2"
    sha256 cellar: :any, monterey: "20dc6a556103b2d58a6dbecfd71e6e0bd66dd65c59e59e6cb6ed66c89f79c1cc"
  end

  deprecate! date: "2025-12-08", because: :unsupported

  depends_on "rabbitmq-c"
end
