require_relative "../lib/php_pecl_formula"

class PhpAT71PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.6.1.tgz"
  sha256 "caf4033677cc7b0992bd68ba1989a095e92150489efc98147445398763a0340a"

  depends_on "unixodbc"
end
