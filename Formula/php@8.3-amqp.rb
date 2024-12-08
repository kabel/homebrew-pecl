require_relative "../lib/php_pecl_formula"

class PhpAT83Amqp < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/amqp-2.1.2.tgz"
  sha256 "0cb16d63752a0055de55a22062a6c1744908696d92268d76181284669025d993"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "5d27b60925a903fd2528ec858e2a8bbce5db9213f90ad339166a3ce4ca6329a2"
    sha256 cellar: :any, ventura: "58a28968cdd1a50d3f1120e0b2095888313bc77d4fa02d5f9fe112dd9f397763"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  depends_on "rabbitmq-c"
end
