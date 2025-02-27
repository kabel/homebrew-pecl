require_relative "../lib/php_pecl_formula"

class PhpAT82Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.20.1.tgz"
  sha256 "614e57594918feb621f525e6516d59ce09b78f5172355ba8afb6c2207c1ce900"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "504f6968ecf1d806b8d1c9462f7916c3cdc9a8ef42076444f6e98748e672a6bc"
    sha256 cellar: :any, ventura: "2fc2d0b702451df5298e02507e4485d2967649fa365cb8718d05ef0fb8e64ada"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  depends_on "icu4c"
  depends_on "openssl@3"
  depends_on "snappy"
  depends_on "zstd"
end
