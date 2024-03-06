require_relative "../lib/php_pecl_formula"

class PhpPdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.12.0.tgz"
  sha256 "22f0cb17b45f0deccd0bba072ee0085ff4094cd6ee2acc26f7f924975ef652c6"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "0cf10b54a7c4282862a8cf5c095d68777ffb1624f77fc7af36e2fa10daeb4cb3"
    sha256 cellar: :any, ventura:  "c95f88d6e57c0bc37de849b09208822b8eaf55014342f4627890231532e27c59"
    sha256 cellar: :any, monterey: "76c6f4f7d9f886649c5b67cdc9079f8bbed950baa6a12476afd067d2bee69337"
  end

  depends_on "unixodbc"
end
