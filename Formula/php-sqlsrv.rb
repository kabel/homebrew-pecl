require_relative "../lib/php_pecl_formula"

class PhpSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.12.0.tgz"
  sha256 "a9ebb880b2a558d3d6684f6e6802c53c5bffa49e1ee60d1473a7124fc9cb72ad"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "c27473a5a1566b7eb561f08c78fb5b1f8d98b88f2b97dcde9a60303ec278c2d4"
    sha256 cellar: :any, ventura:  "a840ea31cbe2bc7e3ea697ce63b0b49b0829cd78bbacddfb244a17a69886a754"
    sha256 cellar: :any, monterey: "b58d2ae739879ea6283922d1439c72789e13824bd271f2cd1725a7b13acb8a7a"
  end

  depends_on "unixodbc"
end
