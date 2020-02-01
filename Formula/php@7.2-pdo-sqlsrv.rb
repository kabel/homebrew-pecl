require_relative "../lib/php_pecl_formula"

class PhpAT72PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.8.0.tgz"
  sha256 "94e28f9b7968b37e93204b625175b330c69026f58226734d966485829a5f9b7c"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "f1882ec78cb539c4ddb71e7731aeee0f6d9293c98a0127845fa93a574bb6cfbc" => :mojave
    sha256 "00173965b4f41c7ee2d9df2b85ef82005de01c0d67a6f15101ed39becc217997" => :high_sierra
  end

  depends_on "unixodbc"
end
