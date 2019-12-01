require_relative "../lib/php_pecl_formula"

class PhpIgbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.0.1.tgz"
  sha256 "5959607f3e236e19a9d01e1a8c74800fb3138f3528ba6601deedbd8b83ab12f1"
  revision 1

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "85d81e1efa3ffdd4c67d1f9f2c60c72b17f58d23940f3c16e16b427eb31cb808" => :mojave
    sha256 "55686884dcba520d99928bfce6fe82eb882650405fa0f9396f23e798a03c2714" => :high_sierra
  end
end
