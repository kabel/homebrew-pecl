require_relative "../lib/php_pecl_formula"

class PhpAT81Amqp < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/amqp-2.1.2.tgz"
  sha256 "0cb16d63752a0055de55a22062a6c1744908696d92268d76181284669025d993"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "a9fbe93f4f8cdcf49c0de02272685b247fe8bc86b3913578e99dfc3335113782"
    sha256 cellar: :any, ventura:  "24086247b420a28da9d64d47ba9efe3b27d7514e69b6004bfdf9b48a7ea552cc"
    sha256 cellar: :any, monterey: "1286ccf4472adc43d9f162f5c3bd313fc5d55530ec636b40da39e31750affd6d"
  end

  deprecate! date: "2024-11-25", because: :unsupported

  depends_on "rabbitmq-c"
end
