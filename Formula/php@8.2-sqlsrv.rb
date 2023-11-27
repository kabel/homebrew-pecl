require_relative "../lib/php_pecl_formula"

class PhpAT82Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.11.0.tgz"
  sha256 "6e437af4db730ab995c597f960e98bac060fc220a8d51ee24877eb7f39090a09"
  license "MIT"

  deprecate! date: "2025-12-08", because: :unsupported

  depends_on "unixodbc"
end
