require_relative "../lib/php_pecl_formula"

class PhpAT72Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.7.5.tgz"
  sha256 "e48a07618c0ae8be628299991b5f481861c891a22544a2365a63361cc181c379"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "2f2a997a4a517305e0b4bcb3d1894c913b9161d8fe4c61194925cf501991370d" => :catalina
    sha256 "8af69ac0adc6a0216b37cd32901622f61af985f4b2174a4890460eb0cc25abdb" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
