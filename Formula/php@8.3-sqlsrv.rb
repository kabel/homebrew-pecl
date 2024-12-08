require_relative "../lib/php_pecl_formula"

class PhpAT83Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.12.0.tgz"
  sha256 "a9ebb880b2a558d3d6684f6e6802c53c5bffa49e1ee60d1473a7124fc9cb72ad"
  license "MIT"

  deprecate! date: "2027-12-31", because: :unsupported

  depends_on "unixodbc"
end
