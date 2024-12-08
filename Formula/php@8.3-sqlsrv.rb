require_relative "../lib/php_pecl_formula"

class PhpAT83Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.12.0.tgz"
  sha256 "a9ebb880b2a558d3d6684f6e6802c53c5bffa49e1ee60d1473a7124fc9cb72ad"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:  "81b7f2276a3f31bd2b2f49cac8310e4dd69eca420f7eb8914c1978eb70303bca"
    sha256 cellar: :any, ventura: "1d0b9a1e186a2060c0f7daaf13efd9545a7a8b13a71ad58e1ac5b249796be068"
  end

  deprecate! date: "2027-12-31", because: :unsupported

  depends_on "unixodbc"
end
