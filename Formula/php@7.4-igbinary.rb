require_relative "../lib/php_pecl_formula"

class PhpAT74Igbinary < PhpPeclFormula
  extension_dsl "Communicate with any AMQP compliant server"

  url "https://pecl.php.net/get/igbinary-3.2.3.tgz"
  sha256 "c0957f6e6d9aa96358fd5fbd8c1f919470511b7287ba305bc938cc3919c4cab9"
  license "BSD-3-Clause"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 cellar: :any_skip_relocation, big_sur:  "019690bd9e19e210779ca29b8574a3137a9f826fdcfd8409d22f72149bfd33ef"
    sha256 cellar: :any_skip_relocation, catalina: "7126d66752a28583d6040aad2a4969cf75a8b3178fdf1910640514ba633c29ef"
    sha256 cellar: :any_skip_relocation, mojave:   "ff054e7761093f4a281c0cbcdc5580d6215e027e45b7cc3904bd4065a988255b"
  end
end
