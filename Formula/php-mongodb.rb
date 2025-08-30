require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-2.1.1.tgz"
  sha256 "bea8eb86be7e301b1cd3935ee3ccfa052e410a7cfa404ae5ab4b11e4c99b8899"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "3d29054b53466d7772e1054c31c9c65e8bd4b364445d57ed197f03d00a7ed3da"
    sha256 cellar: :any, ventura: "ff64d54c034c25cca647e8a1ad9b6b0f1a3b859c4200311cb7fd8f2a987f58b3"
  end

  depends_on "icu4c"
  depends_on "openssl@3"
  depends_on "snappy"
  depends_on "zstd"
end
