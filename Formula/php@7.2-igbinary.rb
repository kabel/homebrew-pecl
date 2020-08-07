require_relative "../lib/php_pecl_formula"

class PhpAT72Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.1.4.tgz"
  sha256 "f4be61542df76ef628825a9bf1ec8de180d4c6142816349c1e4004918178f015"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "239847e833805aa884691aa7c73d4d88f8997787301562a8f18ba87d1ec952a8" => :catalina
    sha256 "ed53d95030acf0d4d1a19e53f856e133c8e8cd4c4fe0f07e5a9e314ff0916f7e" => :mojave
  end
end
