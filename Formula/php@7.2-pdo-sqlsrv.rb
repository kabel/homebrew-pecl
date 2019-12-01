require_relative "../lib/php_pecl_formula"

class PhpAT72PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.7.0preview.tgz"
  sha256 "9d6ab94ad1ef69906acb44545581d7a3c267a95d859ce37e45c5abbe896227a0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "050bd85bc06e2a4fe7588dbbf89cabfe43753047c13cb5043dd8754e28c9416f" => :mojave
    sha256 "cea30a64a12f795d4f229fc5a3baf95b066e0f4587f717fb571a404ad86ec0eb" => :high_sierra
  end

  depends_on "unixodbc"

  def source_dir
    "pdo_sqlsrv-5.7.0preview"
  end
end
