require_relative "../lib/php_pecl_formula"

class PhpAT73Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.1.tgz"
  sha256 "601620cffd3b3e559620099c0569b8c4247f029ec18adc0206bf26f8e35753db"
  revision 1
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "58719fd256885c2a16cd08112a7e981d3115d04ade57b54598168b5a6c8c48ad" => :catalina
    sha256 "6080ec8a98fd620411eef4e85ee93aa26392906a1451532e93ebafc179133478" => :mojave
  end
end
