require_relative "../lib/php_pecl_formula"

class PhpPdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.10.0.tgz"
  sha256 "0446bb8bff1e82fcfd993ebd765d1dc56715a3e754453f43ce8e9fe84765112a"
  license "MIT"

  depends_on "unixodbc"
end
