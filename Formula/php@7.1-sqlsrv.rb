require_relative "../lib/php_pecl_formula"

class PhpAT71Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.7.0preview.tgz"
  sha256 "31af4b543796c64d9dc220419cc70304853128122a3adca62e07637ad2b56184"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "e4ec66cf723d35a1ff4b2b08132ba194f41564ae7f088e65639ddc6b10e92a32" => :mojave
    sha256 "e1b420dd201c6900de84838e2e37e14f692092a6f9ac33100e134c0a7d646ff9" => :high_sierra
  end

  depends_on "unixodbc"

  def source_dir
    "sqlsrv-5.7.0preview"
  end
end
