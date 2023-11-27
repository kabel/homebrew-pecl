require_relative "../lib/php_pecl_formula"

class PhpAT82PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.11.1.tgz"
  sha256 "549855a992a1363e4edef7b31be6ab0f9cd6dd9cc446657857750065eae6af89"
  license "MIT"

  deprecate! date: "2025-12-08", because: :unsupported

  depends_on "unixodbc"
end
