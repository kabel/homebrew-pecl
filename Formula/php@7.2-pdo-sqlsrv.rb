require File.expand_path("../lib/php_pecl_formula", __dir__)

class PhpAT72PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.6.1.tgz"
  sha256 "caf4033677cc7b0992bd68ba1989a095e92150489efc98147445398763a0340a"

  depends_on "unixodbc"
end
