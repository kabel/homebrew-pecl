require_relative "../lib/php_pecl_formula"

class PhpSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.10.0.tgz"
  sha256 "76b3f083a1a8f103581c21ba3a46d6ca257beae6728cd158a64a46ab59a226b4"
  license "MIT"

  depends_on "unixodbc"
end
