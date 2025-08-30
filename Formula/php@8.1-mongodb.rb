require_relative "../lib/php_pecl_formula"

class PhpAT81Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-2.1.1.tgz"
  sha256 "bea8eb86be7e301b1cd3935ee3ccfa052e410a7cfa404ae5ab4b11e4c99b8899"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "389a7e16142cc00eb003a94fd1d0e52f21bb59f3897a5fc3863eb7378ec913a7"
    sha256 cellar: :any, ventura: "8f8f6d5e6e207c86b3352c1589cd84fb97d1f06086759a635ca9cb29f0e98613"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  depends_on "icu4c"
  depends_on "openssl@3"
  depends_on "snappy"
  depends_on "zstd"
end
