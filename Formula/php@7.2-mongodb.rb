require_relative "../lib/php_pecl_formula"

class PhpAT72Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.7.4.tgz"
  sha256 "1cec8be860d7d6cff05b075a0e0fc47b1d9f580ef6a0cd46948e455a88a6859a"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "07a4292f05a025a5ec37b19ff3db71283958c815ea99bcde95d0af5111740da9" => :catalina
    sha256 "233045f452284245da3f0b68c6175ea57b9aa146e7d143cc2161b7fd66ae0374" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
