require_relative "../lib/php_pecl_formula"

class PhpPdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.8.0.tgz"
  sha256 "94e28f9b7968b37e93204b625175b330c69026f58226734d966485829a5f9b7c"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "407ea840027b772daa9b0a1746eb5d1db4c781ea4e970da3b6818d2cd5c85bd3" => :mojave
    sha256 "e0485548f0e817515e37717d103f7781f6230011838b3c08298072789f0c773d" => :high_sierra
  end

  depends_on "unixodbc"
end
