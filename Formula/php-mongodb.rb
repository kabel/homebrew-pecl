require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.20.1.tgz"
  sha256 "614e57594918feb621f525e6516d59ce09b78f5172355ba8afb6c2207c1ce900"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "5e008e43bbd445f6849bc0c49291e73e02ae5dfe3dd88574a0716e1e9084f6fe"
    sha256 cellar: :any, ventura: "2c218ad7fe472f9a65978c7212cef5186c461ccb5323887596d3452ca174a2ba"
  end

  depends_on "icu4c"
  depends_on "openssl@3"
  depends_on "snappy"
  depends_on "zstd"
end
