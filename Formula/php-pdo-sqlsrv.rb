require_relative "../lib/php_pecl_formula"

class PhpPdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.7.1preview.tgz"
  sha256 "93c87bd7ee908bc4f1a96fbba24f161555b1472708442c37145b3385ceb37b0d"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "407ea840027b772daa9b0a1746eb5d1db4c781ea4e970da3b6818d2cd5c85bd3" => :mojave
    sha256 "e0485548f0e817515e37717d103f7781f6230011838b3c08298072789f0c773d" => :high_sierra
  end

  depends_on "unixodbc"

  def source_dir
    "pdo_sqlsrv-5.7.1preview"
  end
end
