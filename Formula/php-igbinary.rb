require_relative "../lib/php_pecl_formula"

class PhpIgbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.1.2.tgz"
  sha256 "e78b327dad5397ed42f7b0c6fe017eddcde8c3c24ab8b59562cb691c411fa90b"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "fafd4ae17ca3ae9f82f9d8e0e8dfca3788c9ef27c693bcbcd33591859a106d27" => :mojave
    sha256 "b9c07492cfd06205cf6163be98cd12f54d40903d2816d25c50eddafc49ae8373" => :high_sierra
  end
end
