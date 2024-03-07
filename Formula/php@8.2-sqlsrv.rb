require_relative "../lib/php_pecl_formula"

class PhpAT82Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.12.0.tgz"
  sha256 "a9ebb880b2a558d3d6684f6e6802c53c5bffa49e1ee60d1473a7124fc9cb72ad"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, sonoma:   "e95c9faaded22e4cd370faa798de76f7020d624ba98b9970ea1911916c705649"
    sha256 cellar: :any, ventura:  "568b11566e00476aa9a318f5a5dbf20f7a18c155240c21ae5b900c22aeca0318"
    sha256 cellar: :any, monterey: "9b2d80c85bc794c40ed346541309bd0bf181eab99213a9f184b564aac9a5a72b"
  end

  deprecate! date: "2025-12-08", because: :unsupported

  depends_on "unixodbc"
end
