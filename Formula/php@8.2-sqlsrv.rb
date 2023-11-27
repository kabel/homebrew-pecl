require_relative "../lib/php_pecl_formula"

class PhpAT82Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.11.1.tgz"
  sha256 "678ab60174be56b09c6916307700e716a4ff266ad53e43990a9d9740d4728463"
  license "MIT"

  deprecate! date: "2025-12-08", because: :unsupported

  depends_on "unixodbc"
end
