require_relative "../lib/php_pecl_formula"

class PhpAT80Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.7.tgz"
  sha256 "d0dc0d0b56a985f4f52cea20717133d3da05368876bc0f94317c1e60e0319e7d"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "67a89450bb6e70aa3a9c1c5f5df2c56251abe7c617ab68db22ca0fe02e395a07"
    sha256 cellar: :any_skip_relocation, catalina: "8eb84c74a6c3938cb1e08e825af0a22f9905525d4e07e5e51aa0779791a04d66"
  end
end
