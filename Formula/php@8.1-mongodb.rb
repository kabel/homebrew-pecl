require_relative "../lib/php_pecl_formula"

class PhpAT81Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.20.1.tgz"
  sha256 "614e57594918feb621f525e6516d59ce09b78f5172355ba8afb6c2207c1ce900"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "f74e0d9a221eca0d4f23227d7cf24693a6d372d4c86b5862719bfd82dd72e3e9"
    sha256 cellar: :any, ventura:  "b75827288cbde3a74f8b79c8843a5f6f9ca2f75a6598e4c82e0f75ceef156dfc"
    sha256 cellar: :any, monterey: "ab8a9df958f3105263102b09f4bde89832a393469b1c6422c45bd25b7645adac"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  depends_on "icu4c"
  depends_on "openssl@3"
  depends_on "snappy"
  depends_on "zstd"
end
