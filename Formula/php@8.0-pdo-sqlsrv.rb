require_relative "../lib/php_pecl_formula"

class PhpAT80PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.9.0.tgz"
  sha256 "0fce417b33879fdae3d50cc1aa5b284ab12662147ea2206fa6e1fadde8b48c58"
  license "MIT"

  depends_on "unixodbc"
end
