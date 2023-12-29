require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.17.2.tgz"
  sha256 "84081b780d48af884d47f0339800c3666c664c66f0035c66d43a34a10fb67376"
  license "Apache-2.0"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "8a2b1da5016721e9948141756cb282cbb9d48ffd7c476b8598354b388bdb90b9"
    sha256 cellar: :any, ventura:  "9bc1d20f7f1f00efb84c0915ea71408eee7414ab52c88c91ab43bfc9b7e41c67"
    sha256 cellar: :any, monterey: "dbcf97ebb1e4bbd3685dad7798de5f074fe7506c931ac4e9573908befecb5d84"
  end

  depends_on "icu4c"
  depends_on "snappy"
end
