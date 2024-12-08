require_relative "../lib/php_pecl_formula"

class PhpAT81Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.12.0.tgz"
  sha256 "a9ebb880b2a558d3d6684f6e6802c53c5bffa49e1ee60d1473a7124fc9cb72ad"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "51036cac89818f4dc1902f5bebef36eb3fd9037be884d26b48ebc5287148ee2c"
    sha256 cellar: :any, ventura:  "518ac5893f2a757f8955478b72172646aca81dcc6d527106b314a99d85f14bcf"
    sha256 cellar: :any, monterey: "f47f683b7596600d395bde78291b00406fe3117ffc86dd5827d3e4f5cc7f3a2b"
  end

  deprecate! date: "2025-12-31", because: :unsupported

  depends_on "unixodbc"
end
