require_relative "../lib/php_pecl_formula"

class PhpPdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.11.1.tgz"
  sha256 "549855a992a1363e4edef7b31be6ab0f9cd6dd9cc446657857750065eae6af89"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "ab9dff1fe0d4e52e0fa3d3837575232475a4f7742878a123da72b8a6065dffb1"
    sha256 cellar: :any, monterey: "cb41c749c50de699d5236c6bbcbeb84f3b8e1fb3eea3826bd7dd7298e6724ad0"
    sha256 cellar: :any, big_sur:  "1202747d28ca51ede226225e6bf62816ec11605d9328a1b56b57db98b294b1c6"
  end

  depends_on "unixodbc"
end
