require_relative "../lib/php_pecl_formula"

class PhpIgbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.0.1.tgz"
  sha256 "5959607f3e236e19a9d01e1a8c74800fb3138f3528ba6601deedbd8b83ab12f1"
  revision 1

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "5511e99bef4ab6242991ff169dec41395cd60d57d79c2c29bab5dafcfa0c8f0e" => :mojave
    sha256 "f3be2de5bdf648f90340772f0f582fb55e4824b0c4a8a534e71f28fc6eb1f0ad" => :high_sierra
  end
end
