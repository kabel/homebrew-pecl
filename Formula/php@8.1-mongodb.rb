require_relative "../lib/php_pecl_formula"

class PhpAT81Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.21.0.tgz"
  sha256 "336506cfd52a878c29bf7e9fb99ff70054ab5efef19ab063c2d28e3889fdb557"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "de0cb9b06669076c4229cb6475dab7d37846ff9c206d3738fc63bf99830cb133"
    sha256 cellar: :any, ventura: "4e2014fe31cb716b1f117b0139d08d3c952398703fb6d5e0ca7c717ead3e84da"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  depends_on "icu4c"
  depends_on "openssl@3"
  depends_on "snappy"
  depends_on "zstd"
end
