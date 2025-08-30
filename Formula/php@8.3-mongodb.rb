require_relative "../lib/php_pecl_formula"

class PhpAT83Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-2.1.1.tgz"
  sha256 "bea8eb86be7e301b1cd3935ee3ccfa052e410a7cfa404ae5ab4b11e4c99b8899"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "8cfe9f032b389c4f157e4d77cc884e73eb1cb22e829798dcd47817126fda3f54"
    sha256 cellar: :any, ventura: "b7648b4386143ce78ccb1681c111efc84132af12ff9c1574668e1cc5449010c5"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  depends_on "icu4c"
  depends_on "openssl@3"
  depends_on "snappy"
  depends_on "zstd"
end
