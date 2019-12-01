require_relative "../lib/php_pecl_formula"

class PhpAT73Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.7.0preview.tgz"
  sha256 "31af4b543796c64d9dc220419cc70304853128122a3adca62e07637ad2b56184"

  depends_on "unixodbc"

  def source_dir
    "sqlsrv-5.7.0preview"
  end
end
