require_relative "../lib/php_pecl_formula"

class PhpAmqp < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/amqp-2.1.2.tgz"
  sha256 "0cb16d63752a0055de55a22062a6c1744908696d92268d76181284669025d993"
  license "PHP-3.01"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "11a30a20bfd4afe188a69609784da2a62277bb4e8863f456157999a38ecb1ca4"
    sha256 cellar: :any, ventura:  "59a4400eea34ecb3745a048c4713c059516f7e70811c23096a3a8ea5f5e727e2"
    sha256 cellar: :any, monterey: "6bdab8ba95009619ef8c7472e4fd6e3150c0a7eec5c8922f8d13f1e672f3f0de"
  end

  depends_on "rabbitmq-c"
end
