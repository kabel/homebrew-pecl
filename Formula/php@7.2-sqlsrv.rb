require_relative "../lib/php_pecl_formula"

class PhpAT72Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.6.1.tgz"
  sha256 "0ab48ae7a9957586f5ec3ea1c19c528951517529078679a0dc3fd9fe83305445"

  depends_on "unixodbc"
end
