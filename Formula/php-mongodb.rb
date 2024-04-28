require_relative "../lib/php_pecl_formula"

class PhpMongodb < PhpPeclFormula
  extension_dsl "MongoDB driver"

  url "https://pecl.php.net/get/mongodb-1.18.1.tgz"
  sha256 "f957b71154052fa9706ce703f4f8043cfe2655367455483798b59269ebe9f135"
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
