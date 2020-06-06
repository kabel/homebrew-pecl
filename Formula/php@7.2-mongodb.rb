require_relative "../lib/php_pecl_formula"

class PhpAT72Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.7.4.tgz"
  sha256 "1cec8be860d7d6cff05b075a0e0fc47b1d9f580ef6a0cd46948e455a88a6859a"
  revision 2

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "2f2a997a4a517305e0b4bcb3d1894c913b9161d8fe4c61194925cf501991370d" => :catalina
    sha256 "8af69ac0adc6a0216b37cd32901622f61af985f4b2174a4890460eb0cc25abdb" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
