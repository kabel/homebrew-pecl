require_relative "../lib/php_pecl_formula"

class PhpAT72Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.7.0preview.tgz"
  sha256 "31af4b543796c64d9dc220419cc70304853128122a3adca62e07637ad2b56184"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "1cc2cfb83bb459bec17ea60b4766e3b58568615e30a0207f73b4754c3f9f5295" => :mojave
    sha256 "1ddd8ffc342cc40dfc8b21cebfa0f58fb18c5cd1425680881c4ae0cf8a67c47a" => :high_sierra
  end

  depends_on "unixodbc"

  def source_dir
    "sqlsrv-5.7.0preview"
  end
end
