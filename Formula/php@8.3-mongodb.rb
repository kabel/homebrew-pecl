require_relative "../lib/php_pecl_formula"

class PhpAT83Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.20.1.tgz"
  sha256 "614e57594918feb621f525e6516d59ce09b78f5172355ba8afb6c2207c1ce900"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "555ad118bc4ccd1015bd62da46273f4698cbb38fc80a0e6d50a6b0d27ee81f5e"
    sha256 cellar: :any, ventura: "6b01ba6d8a767af484285862a5f8add3dc3855f0c4ba12d4e543d9208698697c"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  depends_on "icu4c"
  depends_on "openssl@3"
  depends_on "snappy"
  depends_on "zstd"
end
