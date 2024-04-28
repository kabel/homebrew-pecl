require_relative "../lib/php_pecl_formula"

class PhpAT80Amqp < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/amqp-2.1.1.tgz"
  sha256 "c9b36f10c2e7b7da472440e21c35655c3bf41983b99bf1e438eac7d5bb1c2b45"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "a23ae0af2a0f7e7404306fb9a7e1931d3cffb99690baf7071b754a909a8dea6a"
    sha256 cellar: :any, ventura:  "177d7fa8453d28f7b44912160512efbfd55f50d7f771a2f7032c15219dea8f08"
    sha256 cellar: :any, monterey: "ba2cec8b94918adaf0e4312c4401730dc9b2a6a86296335ff15622709c0d0191"
  end

  deprecate! date: "2023-11-26", because: :unsupported

  depends_on "rabbitmq-c"
end
