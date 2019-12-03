require_relative "../lib/php_pecl_formula"

class PhpAT71PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.7.0preview.tgz"
  sha256 "9d6ab94ad1ef69906acb44545581d7a3c267a95d859ce37e45c5abbe896227a0"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "c923eb8156f410add757db9c3cc1ec80cdaf6264bb07c0ad19d04c2ba05cf142" => :mojave
    sha256 "44a71eb6dacc11f473dd957cd61ac00736b3632fcdcd78ec98b1aa2d6a08d117" => :high_sierra
  end

  depends_on "unixodbc"

  def source_dir
    "pdo_sqlsrv-5.7.0preview"
  end
end
