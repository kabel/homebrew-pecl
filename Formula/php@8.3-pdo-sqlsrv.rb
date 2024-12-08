require_relative "../lib/php_pecl_formula"

class PhpAT83PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.12.0.tgz"
  sha256 "22f0cb17b45f0deccd0bba072ee0085ff4094cd6ee2acc26f7f924975ef652c6"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "5bdc424248e05afdfa746470a5d555c387587311f2a6646b7d50c9f620419696"
    sha256 cellar: :any, ventura: "c494499912a59e97bed7575b05f90b5415bc66568930e3594349ba5092a31547"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  depends_on "unixodbc"
end
