require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.15.3.tgz"
  sha256 "4f2c4e417fb606b462e870ec03656f3a97ba0b399dc24a6d9d153e9846134388"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "093d5c42debd364486b0766b7f65b584edcd12da43530693ef01907755caf829"
    sha256 cellar: :any, monterey: "d9b78b776c7bf49996066d7c53e8269a9409a54933a4e1247f84e591da16a228"
    sha256 cellar: :any, big_sur:  "e3809ddb420c5e3331c5aa3e12dd952939b12b35b0ce39378a4bef91be7914ae"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
