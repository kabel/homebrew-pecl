require_relative "../lib/php_pecl_formula"

class PhpSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.11.1.tgz"
  sha256 "678ab60174be56b09c6916307700e716a4ff266ad53e43990a9d9740d4728463"
  license "MIT"

  bottle do
    root_url "https://bottles.kabel.rocks/bottles-pecl"
    sha256 cellar: :any, ventura:  "a8ecc4135453dcaa7c2c0a1497fd69684700d44d764613b81efd311cd99cf777"
    sha256 cellar: :any, monterey: "e9de0443c053a571fe72ab6f15ca840d4bf633ffd72bbc41626adf3e3311ebc4"
    sha256 cellar: :any, big_sur:  "b439e0f1b439cfddad5f36cdd5dff78a83fb3d5a18ecff7ff9778776bca8d7b3"
  end

  depends_on "unixodbc"
end
