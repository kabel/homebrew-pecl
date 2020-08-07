require_relative "../lib/php_pecl_formula"

class PhpAT72Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.1.4.tgz"
  sha256 "f4be61542df76ef628825a9bf1ec8de180d4c6142816349c1e4004918178f015"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "d28003d76147108cc2ca3fadb99fcbba1fafa074aec8f389ac8e87a802179629" => :mojave
    sha256 "6c798ddf86731544ba98857be855ba772fbd0600eeea24f13bd20de16670ac33" => :high_sierra
  end
end
