require_relative "../lib/php_pecl_formula"

class PhpIgbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.1.4.tgz"
  sha256 "f4be61542df76ef628825a9bf1ec8de180d4c6142816349c1e4004918178f015"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "3a475fdaa66efd5113f454c94f11ffbf966c2e44f9e05573da0fa58810089ae0" => :catalina
    sha256 "243be0215a3cb60177f8c26039c69d26c6651220f24f95bb03af933a90e0b55b" => :mojave
  end
end
