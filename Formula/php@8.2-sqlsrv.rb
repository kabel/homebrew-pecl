require_relative "../lib/php_pecl_formula"

class PhpAT82Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.12.0.tgz"
  sha256 "a9ebb880b2a558d3d6684f6e6802c53c5bffa49e1ee60d1473a7124fc9cb72ad"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "815f3a8660787571372776e42182381716111b8cd7ce9afc72cba8c235e09d02"
    sha256 cellar: :any, ventura:  "7a4c4de252b76cb13c1536323f55919c5d3c362df9e4a4d49eff00b56c907f51"
    sha256 cellar: :any, monterey: "1db6205b170a4cf30575e9cbe3d4060c14810052fdae1164cd21dfd7300f5d71"
  end

  deprecate! date: "2025-12-08", because: :unsupported

  depends_on "unixodbc"
end
