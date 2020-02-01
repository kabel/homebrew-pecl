require_relative "../lib/php_pecl_formula"

class PhpAT73PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.8.0.tgz"
  sha256 "94e28f9b7968b37e93204b625175b330c69026f58226734d966485829a5f9b7c"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "1cb567d352cf69e37f09ee050d5ce95d8cde73b28480c4428ac7136ff87c6dee" => :mojave
    sha256 "41f4fdbc597684fe21fc735e5ab97f671ce943e2cb7f8d3738241082bd3b4469" => :high_sierra
  end

  depends_on "unixodbc"
end
