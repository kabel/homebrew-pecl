require_relative "../lib/php_pecl_formula"

class PhpAT73Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.1.4.tgz"
  sha256 "f4be61542df76ef628825a9bf1ec8de180d4c6142816349c1e4004918178f015"
  license "BSD-3-Clause"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "00bd38a923dfc782677b22ed8ccdd32e2d26c6625445a734d7da7f2ad3dd834c" => :mojave
    sha256 "1971884c0b023d84f367b61a6d11c88d352810f841c1bf73b081542cbabf0539" => :high_sierra
  end
end
