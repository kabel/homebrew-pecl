require_relative "../lib/php_pecl_formula"

class PhpAT71Sqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/sqlsrv-5.7.0preview.tgz"
  sha256 "31af4b543796c64d9dc220419cc70304853128122a3adca62e07637ad2b56184"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "08b5612a8f41dd7378aff4ea181f694ad1efc24fa4179272f68d6653aecf288c" => :mojave
    sha256 "49b0d7930b12cd75c5d45e710a21535a8dd55098b34606a0d43a26fcd1c66122" => :high_sierra
  end

  depends_on "unixodbc"

  def source_dir
    "sqlsrv-5.7.0preview"
  end
end
