require_relative "../lib/php_pecl_formula"

class PhpAT83Mongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-2.1.1.tgz"
  sha256 "bea8eb86be7e301b1cd3935ee3ccfa052e410a7cfa404ae5ab4b11e4c99b8899"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "061d942fce3cdaabfcba6a673f4478cd35607e608104a06b76b29fb97ff50889"
    sha256 cellar: :any, ventura: "19328b8ef08a23dfc651eddaf78ed0eee2ef1d74c90f988ca65066f2eaaf58e2"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  depends_on "icu4c"
  depends_on "openssl@3"
  depends_on "snappy"
  depends_on "zstd"
end
