require_relative "../lib/php_pecl_formula"

class PhpAT72PdoSqlsrv < PhpPeclFormula
  extension_dsl "Microsoft Drivers for SQL Server"

  url "https://pecl.php.net/get/pdo_sqlsrv-5.7.1preview.tgz"
  sha256 "93c87bd7ee908bc4f1a96fbba24f161555b1472708442c37145b3385ceb37b0d"

  bottle do
    root_url "https://dl.bintray.com/kabel/bottles-pecl"
    cellar :any
    sha256 "07d911f8737c270e6e1e37529bd2b6e90991603262044e7d0350a3ee17ba32f3" => :mojave
    sha256 "cb1cdcfc54097a8b360efe2e2c0e38ed7a72d39e8d61244f9019864718f46b00" => :high_sierra
  end

  depends_on "unixodbc"

  def source_dir
    "pdo_sqlsrv-5.7.1preview"
  end
end
