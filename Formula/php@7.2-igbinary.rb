require_relative "../lib/php_pecl_formula"

class PhpAT72Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.1.2.tgz"
  sha256 "e78b327dad5397ed42f7b0c6fe017eddcde8c3c24ab8b59562cb691c411fa90b"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "d28003d76147108cc2ca3fadb99fcbba1fafa074aec8f389ac8e87a802179629" => :mojave
    sha256 "6c798ddf86731544ba98857be855ba772fbd0600eeea24f13bd20de16670ac33" => :high_sierra
  end
end
