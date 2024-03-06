require_relative "../lib/php_pecl_formula"

class PhpAT81Amqp < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/amqp-2.1.2.tgz"
  sha256 "0cb16d63752a0055de55a22062a6c1744908696d92268d76181284669025d993"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "21a1df66e49fa8a6e523c09ddbf18b021afdd8f965d5d969c6d7818924b0dc91"
    sha256 cellar: :any, ventura:  "441a788cbf2c849a3db9ca5bda438e1a0dc42474c416283c84a3380bb666b8ed"
    sha256 cellar: :any, monterey: "bf9505aa79f242fefdc6bb9d0a381fcc3797c9accb28d6b50c1c27d0e5c53b6c"
  end

  deprecate! date: "2024-11-25", because: :unsupported

  depends_on "rabbitmq-c"
end
