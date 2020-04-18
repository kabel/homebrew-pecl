require_relative "../lib/php_pecl_formula"

class PhpPdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.8.1.tgz"
  sha256 "2047b6cb4e5d8592c8cc31df88b5f23654ed94f0c2f084b148403f4746276a19"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "fdb975eb33a9eba80333441abd0aee57ae718b0e1d6b10284840f8c590fc27c8" => :mojave
    sha256 "6899ee1026f31d2ed41e542d8d901b62b6f572797885c235df09cb24edfcf105" => :high_sierra
  end

  depends_on "unixodbc"
end
