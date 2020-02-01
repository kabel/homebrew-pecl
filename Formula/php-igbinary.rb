require_relative "../lib/php_pecl_formula"

class PhpIgbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.1.2.tgz"
  sha256 "e78b327dad5397ed42f7b0c6fe017eddcde8c3c24ab8b59562cb691c411fa90b"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "5511e99bef4ab6242991ff169dec41395cd60d57d79c2c29bab5dafcfa0c8f0e" => :mojave
    sha256 "f3be2de5bdf648f90340772f0f582fb55e4824b0c4a8a534e71f28fc6eb1f0ad" => :high_sierra
  end
end
