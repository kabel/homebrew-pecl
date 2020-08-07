require_relative "../lib/php_pecl_formula"

class PhpAT73Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.1.4.tgz"
  sha256 "f4be61542df76ef628825a9bf1ec8de180d4c6142816349c1e4004918178f015"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "8218ff0165d6bf1c56cf46a37fd70967a683c501cb12559a21f86df7b1288faf" => :catalina
    sha256 "85d52e4f6329e014f03f779c0e3578fc12ee864681058687306d904756967fa9" => :mojave
  end
end
