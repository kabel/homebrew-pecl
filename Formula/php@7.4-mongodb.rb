require_relative "../lib/php_pecl_formula"

class PhpAT74Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.9.1.tgz"
  sha256 "e9d1ce23168385aae24d9b516cab3d67504c85e800569e0fcf2f2125bcd6fed7"
  revision 1
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 big_sur:  "f5703627fa4f714a8b0c4abe77283c367aeb78623572f3c13630bccf893ece01"
    sha256 catalina: "cbac8fd55d69a9b0dc34af7a3c5f591d338e805fbe735a2e6e9622db695d8df0"
    sha256 mojave:   "7ec2368872a809b43bc45554bc25b47c5dba4564f59c6054ab422960cdc07d48"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
