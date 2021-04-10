require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.9.1.tgz"
  sha256 "e9d1ce23168385aae24d9b516cab3d67504c85e800569e0fcf2f2125bcd6fed7"
  license "Apache-2.0"

  bottle do
    root_url "https://kabel.jfrog.io/artifactory/bottles-pecl"
    sha256 catalina: "2dd30bdf5cd5697ee67d71a6dec71bed0e9ea9faf6297c691f68d27451b25759"
    sha256 mojave:   "20f6f475728a8c5d6a0c82ec4109742dbf84ad706fbdc09b5e60e3404a0812c9"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
