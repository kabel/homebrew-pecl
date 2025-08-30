require_relative "../lib/php_pecl_formula"

class PhpAT82Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-2.1.1.tgz"
  sha256 "bea8eb86be7e301b1cd3935ee3ccfa052e410a7cfa404ae5ab4b11e4c99b8899"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "968d88e98132ba69c0512b60caf45c67c9642dc9d35d4e8b951199a1d87a2756"
    sha256 cellar: :any, ventura: "25c2c8422ea99c5e0e6ecf5fdeae65405861e64a2a43e184eca152449aab846a"
  end

  deprecate! date: "2026-12-31", because: :unsupported

  depends_on "icu4c"
  depends_on "openssl@3"
  depends_on "snappy"
  depends_on "zstd"
end
