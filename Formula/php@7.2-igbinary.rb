require_relative "../lib/php_pecl_formula"

class PhpAT72Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.1.2.tgz"
  sha256 "e78b327dad5397ed42f7b0c6fe017eddcde8c3c24ab8b59562cb691c411fa90b"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any_skip_relocation
    sha256 "eaa02f9168c11ae5c68e08b9b670538844fb79ab8cd7f3f35d08559157d40b47" => :mojave
    sha256 "a948c2d9b748fab42292b34f9227f002618fff78b94c339d2ad98124c69232ee" => :high_sierra
  end
end
