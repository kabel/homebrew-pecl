require_relative "../lib/php_pecl_formula"

class PhpSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.12.0.tgz"
  sha256 "a9ebb880b2a558d3d6684f6e6802c53c5bffa49e1ee60d1473a7124fc9cb72ad"
  revision 1
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "220246736f1107201ea1663bdc93a93c249c5abf946b59cb91b9ac0bb96787e9"
    sha256 cellar: :any, ventura: "6108e83d29aaa48bbf1c600db2e5d7b9f59e3943be4137977dbe0c4afaef844f"
  end

  depends_on "unixodbc"
end
