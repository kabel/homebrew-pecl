require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.6.1.tgz"
  sha256 "1560141933a36862ee4d65171d2cc371c9fd468f59f3bef94cf2903186253cc8"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "3e3e5082bf3727c9b8ad4e042e0c327cc7bdcf08113154acc0e3c05b277ce393" => :mojave
    sha256 "2107d2b8a2cdd8fe7872fe1e06f7dee4eea06c14e91a8fa965aacb22832ee6ed" => :high_sierra
  end

  depends_on "icu4c"
  depends_on "snappy"
end
