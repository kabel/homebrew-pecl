require_relative "../lib/php_pecl_formula"

class PhpAT73Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.1.2.tgz"
  sha256 "e78b327dad5397ed42f7b0c6fe017eddcde8c3c24ab8b59562cb691c411fa90b"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "00bd38a923dfc782677b22ed8ccdd32e2d26c6625445a734d7da7f2ad3dd834c" => :mojave
    sha256 "1971884c0b023d84f367b61a6d11c88d352810f841c1bf73b081542cbabf0539" => :high_sierra
  end
end
