require_relative "../lib/php_pecl_formula"

class PhpAT74Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.1.tgz"
  sha256 "601620cffd3b3e559620099c0569b8c4247f029ec18adc0206bf26f8e35753db"
  revision 1
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "709cb9cee1246ed898f612b50249ab779d58809b85f9867e1e173be6848f0983" => :catalina
    sha256 "0feafd84848199b2abf0f77255b49855b4425d86c77a6f95204033e4e7189f44" => :mojave
  end
end
