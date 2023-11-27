require_relative "../lib/php_pecl_formula"

class PhpAT82PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.11.0.tgz"
  sha256 "c307d9bcada02bdc21f59b9f099031b90b30727757bca50fd42fd36159812e8a"
  license "MIT"

  deprecate! date: "2025-12-08", because: :unsupported

  depends_on "unixodbc"
end
