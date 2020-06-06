require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.7.4.tgz"
  sha256 "1cec8be860d7d6cff05b075a0e0fc47b1d9f580ef6a0cd46948e455a88a6859a"
  revision 2

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    sha256 "f46daa74f9fcbfb8602af0d657859beb7021f54b6f47e89a34bcbc64ab3fbe53" => :catalina
    sha256 "66ac32dfd3b62d677b319a31aa946dfff067f4a33a7288f1f247375cfbb64001" => :mojave
  end

  depends_on "icu4c"
  depends_on "snappy"
end
