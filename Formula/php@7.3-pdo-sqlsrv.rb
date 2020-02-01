require_relative "../lib/php_pecl_formula"

class PhpAT73PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.8.0.tgz"
  sha256 "94e28f9b7968b37e93204b625175b330c69026f58226734d966485829a5f9b7c"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "cc21514ac6858c43428ca2e7b52e6e9dc7d54bef531c6838697b0cc90bfc1aff" => :mojave
    sha256 "60c8e2ffb4a31f12df9c8b5301ca323c2938ce09ce7156927d3bf8c13391ed23" => :high_sierra
  end

  depends_on "unixodbc"
end
