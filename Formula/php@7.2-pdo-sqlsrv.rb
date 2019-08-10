require_relative "../lib/php_pecl_formula"

class PhpAT72PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.6.1.tgz"
  sha256 "caf4033677cc7b0992bd68ba1989a095e92150489efc98147445398763a0340a"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "050bd85bc06e2a4fe7588dbbf89cabfe43753047c13cb5043dd8754e28c9416f" => :mojave
    sha256 "cea30a64a12f795d4f229fc5a3baf95b066e0f4587f717fb571a404ad86ec0eb" => :high_sierra
  end

  depends_on "unixodbc"
end
