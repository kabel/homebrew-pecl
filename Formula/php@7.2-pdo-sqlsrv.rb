require_relative "../lib/php_pecl_formula"

class PhpAT72PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.8.0.tgz"
  sha256 "94e28f9b7968b37e93204b625175b330c69026f58226734d966485829a5f9b7c"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "2c4e4ded878384fb522266ba0ecae5ca305076c2fdc005a4e3e2619c8d1a0afb" => :mojave
    sha256 "8e6b1285b8470615d5818a8415006fd0322d2f3a2b300d9f22d5e2cc5abd6345" => :high_sierra
  end

  depends_on "unixodbc"
end
