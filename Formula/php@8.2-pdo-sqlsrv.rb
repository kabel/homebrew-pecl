require_relative "../lib/php_pecl_formula"

class PhpAT82PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.12.0.tgz"
  sha256 "22f0cb17b45f0deccd0bba072ee0085ff4094cd6ee2acc26f7f924975ef652c6"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "8ef814a802418bb11f4b1a17a31a968e2fc125533090b5f8507f85b0f8647bd4"
    sha256 cellar: :any, ventura:  "33483fe693923ccb54f367360fb99320f23e5d08a42347fdc4a38fe04f3fc066"
    sha256 cellar: :any, monterey: "f8edb649a745af1ce9dbe1f2ec4cb099078ddea3be8cc7b5a7c80aa50f9dd9c2"
  end

  deprecate! date: "2025-12-08", because: :unsupported

  depends_on "unixodbc"
end
